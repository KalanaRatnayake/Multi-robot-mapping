//This node publishes standard dataset (frieburg university) as pointCloud2 message

#include <iostream>
#include <fstream>
#include <ros/ros.h> 
#include <sensor_msgs/PointCloud2.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl_conversions/pcl_conversions.h>

static sensor_msgs::PointCloud2 publish_cloud; 

//The pcl format point cloud
pcl::PointCloud<pcl::PointXYZRGB>::Ptr pcl_cloud (new pcl::PointCloud<pcl::PointXYZRGB>);

int main(int argc, char **argv){
    //Read data from the file
    ros::init(argc, argv, "freiburg_publisher_1"); 
    ros::NodeHandle nh; 
    ros::Publisher pub = nh.advertise<sensor_msgs::PointCloud2>("scan_1",1, true);
    
    //basic intialization of the pcl point cloud
    pcl_cloud->width    = 1;     //this will be a variable value 
    pcl_cloud->height   = 1;
    pcl_cloud->is_dense = false;
    pcl_cloud->points.resize (pcl_cloud->width * pcl_cloud->height);

    std::ifstream ifile;
    ifile.open ("freiburg_dataset/scan_008_points.dat");
    float x_position, y_position, z_position, point_x, point_y, point_z; 
    
    int line_count = 0; //the line number 
    
    while(ifile >>x_position>>y_position>>z_position>>point_x>>point_y>>point_z){
        
        pcl_cloud->points[line_count].x = x_position + point_x; 
        pcl_cloud->points[line_count].y = y_position + point_y; 
        pcl_cloud->points[line_count].z = z_position + point_z; 
        pcl_cloud->points[line_count].r = 255; 
        pcl_cloud->points[line_count].g = 255;
        pcl_cloud->points[line_count].b = 255;
        //pcl_cloud.points.push_back(pt); //add the new point into the pcl cloud
        line_count +=1; 
        pcl_cloud->width +=1; 
        pcl_cloud->points.resize (pcl_cloud->width * pcl_cloud->height);
    }
    ifile.close();
    pcl::toROSMsg(*pcl_cloud, publish_cloud); 
    publish_cloud.header.frame_id = "map"; 
    pub.publish(publish_cloud);
    ros::spin();  
    return 0;
}