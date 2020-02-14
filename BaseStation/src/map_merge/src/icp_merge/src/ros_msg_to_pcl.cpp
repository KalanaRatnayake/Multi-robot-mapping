// This program subscribes to sensor_msgs/PointCloud2 message, and convert it into pcl::PointCloud<pcl::pointXYZRGB> format 

#include <iostream>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/registration/icp.h>
#include <pcl_conversions/pcl_conversions.h>

#include <ros/ros.h>
#include <sensor_msgs/PointCloud2.h>


void voxel_callback(const sensor_msgs::PointCloud2::ConstPtr& msg){
    sensor_msgs::PointCloud2 ros_pointcloud_msg = *msg; 
    //ROS_INFO("Height of the cloud: [%d]", ros_pointcloud_msg.height);

    //Convert into pcl format 
    pcl::PCLPointCloud2 pcl_cloud2; 
    pcl_conversions::toPCL(ros_pointcloud_msg, pcl_cloud2); 
    pcl::PointCloud<pcl::PointXYZRGB>::Ptr pcl_cloud(new pcl::PointCloud<pcl::PointXYZRGB>); //pcd format of point cloud
    pcl::fromPCLPointCloud2(pcl_cloud2, *pcl_cloud);

    // pcl_cloud is the variable that stores the point cloud in pcl format 
    
    //read raw point cloud's data and print them
    for (size_t i=0; i<pcl_cloud->points.size(); ++i) {
        std::cout << i <<"  " <<
      pcl_cloud->points[i].x << " " << pcl_cloud->points[i].y << " " <<
      pcl_cloud->points[i].z << " ";
      /* 
      // rgb values are tested to be there. cannot print them. maybe a different data type
      if (pcl_cloud->points[i].r ==255){
          std::cout<<"255"<<std::endl; 
      }else {std::cout<<"Other"<<std::endl;} 
      */
    }
}

int main (int argc, char** argv)
{
    ros::init(argc, argv, "pointCloud_type_conversion");
    ros::NodeHandle nh; 
    ros::Subscriber sub = nh.subscribe("/octomap_point_cloud_centers", 1000, voxel_callback); 
    ros::spin(); 
    return 0; 
}

