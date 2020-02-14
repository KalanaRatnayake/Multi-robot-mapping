#include <ros/ros.h>
#include <octomap_msgs/conversions.h>
#include <octomap_msgs/Octomap.h>
#include <octomap_ros/conversions.h>
#include <octomap/ColorOcTree.h>

static int seq_num =1; 
int main(int argc, char** argv)
{
  ros::init(argc, argv, "octomap_publish");
  ros::NodeHandle nh;

  ros::Publisher octomap_publisher = nh.advertise<octomap_msgs::Octomap>("octomap_publish",1, true);

  octomap::ColorOcTree* octree = new octomap::ColorOcTree("example.ot");  

  octomap_msgs::Octomap fmap_msg;
  octomap_msgs::fullMapToMsg(*octree, fmap_msg);  

  fmap_msg.header.seq = seq_num;
  fmap_msg.header.stamp = ros::Time::now();
  fmap_msg.header.frame_id = "map"; 

  octomap_publisher.publish(fmap_msg); 
    ros::spin(); 
    seq_num +=1; 
  
  return 0;
}