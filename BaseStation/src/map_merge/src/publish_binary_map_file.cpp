#include <ros/ros.h>
#include <octomap_msgs/conversions.h>
#include <octomap_msgs/Octomap.h>
#include <octomap_ros/conversions.h>

static int seq_num =1; 
int main(int argc, char** argv)
{
  ros::init(argc, argv, "octomap_publish");
  ros::NodeHandle nh;

  ros::Publisher octomap_publisher = nh.advertise<octomap_msgs::Octomap>("octomap",1, true);

  octomap::OcTree* octree = new octomap::OcTree("file1.bt");  

  octomap_msgs::Octomap bmap_msg;
  octomap_msgs::binaryMapToMsg(*octree, bmap_msg);  

  bmap_msg.header.seq = seq_num;
  bmap_msg.header.stamp = ros::Time::now();
  bmap_msg.header.frame_id = "map"; 

  octomap_publisher.publish(bmap_msg); 
    ros::spin(); 
    seq_num +=1; 
  
  return 0;
}