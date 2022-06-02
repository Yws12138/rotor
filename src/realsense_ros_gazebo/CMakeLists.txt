cmake_minimum_required(VERSION 2.8.3)
project(realsense_ros_gazebo)

find_package(catkin REQUIRED COMPONENTS
  gazebo_dev
  gazebo_msgs
  roscpp
  nodelet
  sensor_msgs
  urdf
  tf
  tf2_ros
  rosconsole
  diagnostic_updater
  std_msgs
  gazebo_ros
  image_transport
  camera_info_manager
  eigen_conversions
)

# find_package (pcl)
find_package(OpenCV REQUIRED)
find_package(PCL 1.8 REQUIRED)
set(PCL_INCLUDE_DIRS /usr/include/pcl-1.8)
add_definitions(${PCL_DEFINITIONS})

include_directories(${OpenCV_INCLUDE_DIRS})
include_directories(${PCL_INCLUDE_DIRS})
link_directories(${OpenCV_LIBRARY_DIRS})
link_directories(image2point ${PCL_LIBRARY_DIRS})

find_package(Boost REQUIRED COMPONENTS thread)

# find_package(gazebo REQUIRED)

find_package(Eigen3 REQUIRED)
include_directories(${EIGEN3_INCLUDE_DIR})
add_definitions(${EIGEN_DEFINITIONS})

include_directories(include
  ${catkin_INCLUDE_DIRS}
  ${Boost_INCLUDE_DIRS}
  ${catkin_INCLUDE_DIRS}
)

link_directories(
  ${catkin_LIBRARY_DIRS}
)


catkin_package(
  INCLUDE_DIRS include
  LIBRARIES
  CATKIN_DEPENDS
  message_runtime
  gazebo_msgs
  roscpp
  nodelet
  geometry_msgs
  sensor_msgs
  urdf
  tf
  tf2_ros
  rosconsole
  std_msgs
  gazebo_ros
  image_transport
  camera_info_manager
)

###########
## Build ##
###########

add_library(realsense_gazebo_plugin src/RealSensePlugin.cpp src/gazebo_ros_realsense.cpp)
target_link_libraries(realsense_gazebo_plugin ${catkin_LIBRARIES} ${GAZEBO_LIBRARIES})
add_dependencies(realsense_gazebo_plugin ${catkin_EXPORTED_TARGETS})

add_executable(camera2world src/camera2world.cpp)
target_link_libraries(camera2world ${catkin_LIBRARIES} ${GAZEBO_LIBRARIES})
add_dependencies(camera2world ${catkin_EXPORTED_TARGETS})


add_executable(image2point src/image2point.cpp)
TARGET_LINK_LIBRARIES(image2point ${PCL_LIBRARIES})
TARGET_LINK_LIBRARIES(image2point ${OpenCV_LIBS})
TARGET_LINK_LIBRARIES(image2point ${catkin_LIBRARIES})

#############
## Install ##
#############

install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  FILES_MATCHING PATTERN "*.h"
  PATTERN ".svn" EXCLUDE
)

install(TARGETS
  realsense_gazebo_plugin
  ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
  RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

install(DIRECTORY meshes
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

install(DIRECTORY xacro
    DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
