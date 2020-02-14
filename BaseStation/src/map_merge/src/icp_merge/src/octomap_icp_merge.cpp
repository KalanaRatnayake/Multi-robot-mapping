//This node reads data fom two point cloud sources - taken as octomap - voxel centers 
// and merge them using icp algorithm  

#include <iostream>
#include <ros/ros.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/registration/icp.h>
#include <pcl_conversions/pcl_conversions.h>
#include <sensor_msgs/PointCloud2.h>
#include "octomap_msgs/Octomap.h"
#include "octomap_msgs/conversions.h"
#include "octomap/AbstractOcTree.h"
#include "octomap/OcTree.h"
#include "octomap/ColorOcTree.h"
#include "octomap/OcTreeNode.h"
#include <string>
#include <time.h>

//using namespace octomap; 
using namespace std; 

double resolution = 0.04; 
const int robot_count = 2;  
//static int seq_num = 1; 
static bool completeness[robot_count];  

//float floor_z = -0.14f;       //To remove the floor values


//ColorOcTree tree_final(resolution);

//The temporary tree variables, which are cleared after every subscription 
//AbstractOcTree* tree;
//ColorOcTree* color_octree; 

static pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud_source;    // the converted cloud source 
static pcl::PointCloud<pcl::PointXYZRGB>::Ptr cloud_target;    //the converted cloud target 
 
//The Subscriber Publisher Class for the Map Merge Process ---------------------------------------------
//------------------------------------------------------------------------------------------------------
class SubscribeAndPublish{
public:
    SubscribeAndPublish(){
        pub = nh.advertise<sensor_msgs::PointCloud2>("octomap_centers_merged",1, true);
        sub1 = nh.subscribe("/scan_1", 1000, &SubscribeAndPublish::voxel_callback_1, this);
        sub2 = nh.subscribe("/scan_2", 1000, &SubscribeAndPublish::voxel_callback_2, this);
    }

    void voxel_callback_1(const sensor_msgs::PointCloud2::ConstPtr& msg_1){
        cout<<"OCtomap centers message of robot 1 received"<<endl; 
        sensor_msgs::PointCloud2 ros_pointcloud_msg = *msg_1;
        //Convert into pcl format 
        pcl::PCLPointCloud2 pcl_cloud2; 
        pcl_conversions::toPCL(ros_pointcloud_msg, pcl_cloud2);
        pcl::PointCloud<pcl::PointXYZRGB>::Ptr pcl_cloud_1(new pcl::PointCloud<pcl::PointXYZRGB>); //pcd format of point cloud
        pcl::fromPCLPointCloud2(pcl_cloud2, *pcl_cloud_1);
        completeness[0] = true; 
        //assign the temporaty pcl_cloud point cloud into static variable? As source 
        cloud_source = pcl_cloud_1; 
        //free(cloud_source)

        if(completeness[0] and completeness[1]) {

            pcl::IterativeClosestPoint<pcl::PointXYZRGB, pcl::PointXYZRGB> icp;
            icp.setInputSource(cloud_source);
            icp.setInputTarget(cloud_target); 
            pcl::PointCloud<pcl::PointXYZRGB> Final;
            icp.align(Final);
            std::cout << "has converged:" << icp.hasConverged() << " score: " <<
            icp.getFitnessScore() << std::endl;
            std::cout << icp.getFinalTransformation() << std::endl;
            //convert the pcl back to ROS message 
            sensor_msgs::PointCloud2 cloud_transformed;
            pcl::toROSMsg(Final, cloud_transformed); 
            cloud_transformed.header.frame_id = "map"; 
            pub.publish(cloud_transformed); 
        }
    }

    void voxel_callback_2(const sensor_msgs::PointCloud2::ConstPtr& msg_2){
        cout<<"OCtomap centers message of robot 2 received"<<endl; 
        sensor_msgs::PointCloud2 ros_pointcloud_msg = *msg_2;
        //Convert into pcl format 
        pcl::PCLPointCloud2 pcl_cloud2; 
        pcl_conversions::toPCL(ros_pointcloud_msg, pcl_cloud2); 
        pcl::PointCloud<pcl::PointXYZRGB>::Ptr pcl_cloud_2(new pcl::PointCloud<pcl::PointXYZRGB>); //pcd format of point cloud
        pcl::fromPCLPointCloud2(pcl_cloud2, *pcl_cloud_2);

        //assign the temporaty pcl_cloud point cloud into static variable? as target 
        cloud_target = pcl_cloud_2; 
        completeness[1] = true;

       if(completeness[0] and completeness[1]) {
            
            clock_t start = clock(); 
 
            pcl::IterativeClosestPoint<pcl::PointXYZRGB, pcl::PointXYZRGB> icp;
            icp.setInputSource(cloud_source);
            icp.setInputTarget(cloud_target); 
            pcl::PointCloud<pcl::PointXYZRGB> Final;
            icp.align(Final);

            std::cout << "has converged:" << icp.hasConverged() << " score: " <<
            icp.getFitnessScore() << std::endl;
            std::cout << icp.getFinalTransformation() << std::endl;
            //convert the pcl back to ROS message 
            sensor_msgs::PointCloud2 cloud_transformed; 
            pcl::toROSMsg(Final, cloud_transformed); 
            cloud_transformed.header.frame_id = "map"; 
            pub.publish(cloud_transformed); 
            clock_t end = clock(); 
            std::cout<<"time "<<((float)(end-start))/CLOCKS_PER_SEC<<std::endl; 

            //check the number of points in each point cloud 
            std::cout<<"source points: "<<cloud_source->points.size()<<std::endl; 
            std::cout<<"target points: "<<cloud_target->points.size()<<std::endl; 
            std::cout<<"final points: "<<Final.points.size()<<std::endl; 
        }

    }
    //Align considering two robots present 
    void icp_align_voxels() {   
        //Align cloud_source and cloud_target 
        //check whether both source and target are assigned values before applying icp. 
        if(completeness[0] and completeness[1]) {
            pcl::IterativeClosestPoint<pcl::PointXYZRGB, pcl::PointXYZRGB> icp;
            icp.setInputSource(cloud_source);
            icp.setInputTarget(cloud_target); 

            pcl::PointCloud<pcl::PointXYZRGB> Final;
            icp.align(Final);

            std::cout << "has converged:" << icp.hasConverged() << " score: " <<
            icp.getFitnessScore() << std::endl;
            std::cout << icp.getFinalTransformation() << std::endl;
            //convert the pcl back to ROS message 
            sensor_msgs::PointCloud2 cloud_transformed; 
            pcl::toROSMsg(Final, cloud_transformed); 
            cloud_transformed.header.frame_id = "map"; 
            pub.publish(cloud_transformed); 
            
        }
    }

    private:
    ros::NodeHandle nh; 
    ros::Publisher pub;
    ros::Subscriber sub1;
    ros::Subscriber sub2; 

};

int main(int argc, char **argv){
    for(int i=0; i<robot_count; i++){
        completeness[i] = false; 
    }
    ros::init(argc, argv, "color_octomap_sub");
    SubscribeAndPublish sap; 
    sap.icp_align_voxels(); 
    ros::spin(); 
    return 0; 
}
