#include <ros/ros.h>
#include <tf/transform_listener.h>
#include <geometry_msgs/Twist.h>
#include <iostream>
#include <cmath>
// quaterniond to rotation matrix head file 
#include <Eigen/Eigen>
#include <Eigen/Geometry>
#include <Eigen/Core>
#include <vector>
#include <math.h>
#include <eigen_conversions/eigen_msg.h>

using namespace std;
double x,y,z,ww,zz,hh,ii,Aww,Azz,Ahh,Aii;
double theta;


Eigen::Matrix3d Quaternion2RotationMatrix(const double x,const double y,const double z,const double w)
{
    Eigen::Quaterniond q;
    q.x() = x;
    q.y() = y;
    q.z() = z;
    q.w() = w;
 
    Eigen::Matrix3d R = q.normalized().toRotationMatrix();
    cout << "Quaternion2RotationMatrix result is:" <<endl;
    cout << "R = " << endl << R << endl<< endl;
    return R;

}

int main(int argc, char** argv)
{
  ros::init(argc, argv, "two_tf_transform");
 
  ros::NodeHandle node;
  tf::TransformListener listener;
  ros::Rate rate(10.0);
  string fatherFrame,childFrame;
  node.param("fatherFrame",fatherFrame,string("/world"));
  node.param("childFrame",childFrame,string("/d435_depth_frame"));
  ros::Publisher camera2world = node.advertise<std_msgs::Float64MultiArray>("/camera2world",10);
  while (node.ok()){
    tf::StampedTransform transform;
    try{
        //得到坐标odom和坐标base_link之间的关系
      listener.waitForTransform(fatherFrame, childFrame, ros::Time(0), ros::Duration(3.0));
      listener.lookupTransform(fatherFrame, childFrame,
                               ros::Time(0), transform);
    }
    catch (tf::TransformException &ex) {
      ROS_ERROR("%s",ex.what());
      ros::Duration(1.0).sleep();
    }
    
    x=transform.getOrigin().x();
    y=transform.getOrigin().y();
    z=transform.getOrigin().z();
    // cout<<"x: "<<x<<endl;
    // cout<<"y: "<<y<<endl;
    // cout<<"z: "<<z<<endl;
    //两种不同的表示方法，来表示getRotation
    // ww=transform.getRotation()[0];
    // zz=transform.getRotation()[1];
    // hh=transform.getRotation()[2];
    // ii=transform.getRotation()[3];
    //  cout<<"ww: "<<ww<<endl;
    //  cout<<"zz: "<<zz<<endl;
    //  cout<<"hh: "<<hh<<endl;
    //  cout<<"ii: "<<ii<<endl;
    Aww=transform.getRotation().getX();
    Azz=transform.getRotation().getY();
    Ahh=transform.getRotation().getZ();
    Aii=transform.getRotation().getW();
    Eigen::Matrix4d R;
    Eigen::Vector3d T(x, y, z);
    Eigen::Matrix3d wRc =  Quaternion2RotationMatrix(Aww,Azz,Ahh,Aii);
    R.block(0,0,3,3) = wRc;
    R.col(3) << x, y, z, 0;
    R.row(3) << 0, 0, 0, 1;
    // cout<<"this is rotation matrix :"<<wRc<<endl;
    // cout<<R.col(3)<<endl;
    // cout<<R.row(3)<<endl;
    // cout<<"this is the whole matrix : "<<R<<endl;
    std_msgs::Float64MultiArray m;
    tf::matrixEigenToMsg(R,m);
    camera2world.publish(m);
    rate.sleep();
  }
  return 0;
};
 