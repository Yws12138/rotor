#include <ros/ros.h>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/CameraInfo.h>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_types.h>
#include <pcl/PCLPointCloud2.h>
#include <pcl/conversions.h>
#include <iostream>
// filter of the ground points
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/filters/extract_indices.h>
#include <pcl/segmentation/progressive_morphological_filter.h>

#include <tf/transform_listener.h>
#include <eigen_conversions/eigen_msg.h>
#include <Eigen/Eigen>

using namespace std;
std_msgs::Float64MultiArray m;
Eigen::RowVector4d v;

ros::Publisher pub_point_cloud2;
// tf::TransformListener listener;

 
bool is_K_empty = 1;
double K[9];
//     [fx  0 cx]
// K = [ 0 fy cy]
//     [ 0  0  1]

 
void img_callback(const sensor_msgs::ImageConstPtr &img_msg)
{
    string frameTopic; 
    ros::param::get("~frameTopic",frameTopic);
    // Step1: 读取深度图
    //ROS_INFO("image format: %s %dx%d", img_msg->encoding.c_str(), img_msg->height, img_msg->width);
    int height = img_msg->height;
    int width = img_msg->width;
    // 通过指针强制转换，读取为16UC1数据，单位是mm
    unsigned short *depth_data = (unsigned short*)&img_msg->data[0];
    
    // Step2: 深度图转点云
    sensor_msgs::PointCloud2 point_cloud2;
    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud(new pcl::PointCloud<pcl::PointXYZ>);
    pcl::PointCloud<pcl::PointXYZ>::Ptr cloud_cliped(new pcl::PointCloud<pcl::PointXYZ>);
    for(int uy=0; uy<height; uy++)
    {
        for(int ux=0; ux<width; ux++)
        {
            float x, y, z;
            z = *(depth_data + uy*width + ux) / 1000.0;
            if(z!=0)
            {
                x = z * (ux - K[2]) / K[0];
                y = z * (uy - K[5]) / K[4];
                pcl::PointXYZ p(z, -x, -y);
                cloud->push_back(p);        
            }
        }
    }

    pcl::ExtractIndices<pcl::PointXYZ> cliper;
    cliper.setInputCloud(cloud);
    pcl::PointIndices indices;
    for (size_t i = 0; i < cloud->points.size(); i++)
    {
        double sum = cloud->points[i].x * m.data.at(8) + cloud->points[i].y * m.data.at(9) + cloud->points[i].z * m.data.at(10) + 1 * m.data.at(11);
        if(sum < 0.05)
        {
            indices.indices.push_back(i);
        }
    }
    cliper.setIndices(boost::make_shared<pcl::PointIndices>(indices));
    cliper.setNegative(true); //ture to remove the indices 去除高于阈值的
    cliper.filter(*cloud_cliped);
    pcl::toROSMsg(*cloud_cliped, point_cloud2);
    // Step3: 发布点云
    // pcl::toROSMsg(*cloud, point_cloud2);
    point_cloud2.header.frame_id = frameTopic;
    pub_point_cloud2.publish(point_cloud2);
}

void matrix_callback(const std_msgs::Float64MultiArray &matrix)
{
    m = matrix;
    v << matrix.data.at(8), matrix.data.at(9), matrix.data.at(10), matrix.data.at(11);
}
 
 
void camera_info_callback(const sensor_msgs::CameraInfoConstPtr &camera_info_msg)
{
    // 读取相机参数
    if(is_K_empty)
    {
        for(int i=0; i<9; i++)
        {
            K[i] = camera_info_msg->K[i];
        }
        is_K_empty = 0;
    }
}
 
int main(int argc, char **argv)
{
    ros::init(argc, argv, "image2point");
    ros::NodeHandle n;
    // 订阅D435i的深度图，在其回调函数中把深度图转化为点云，并发布出来
    std::string imageTopic,camInfo; 
    ros::param::get("~imageTopic",imageTopic);
    ros::param::get("~camInfo",camInfo);
    string camera2world;
    n.param("camera2world",camera2world,string("/camera2world"));

    ros::Subscriber sub_img = n.subscribe(imageTopic, 1, img_callback);
    ros::Subscriber sub_matrix = n.subscribe(camera2world, 1, matrix_callback);
    // 订阅D435i的深度相机参数
    ros::Subscriber sub_cmara_info = n.subscribe(camInfo, 1, camera_info_callback);
    pub_point_cloud2 = n.advertise<sensor_msgs::PointCloud2>("/d435i_point_cloud", 1000);
    
    ROS_INFO("Runing ...");
    ros::spin();
    return 0;
}