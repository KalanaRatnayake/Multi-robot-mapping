#include "ros/ros.h"
#include "octomap_msgs/Octomap.h"
#include "octomap/OcTree.h"
#include "octomap/AbstractOcTree.h"
#include "octomap_msgs/conversions.h"

using namespace octomap;
using namespace std; 

OcTree tree (0.1f);         //initializing the tree
static int seq =1; 
void create_octree(){
    for (int x=-20; x<20; x++) {
        for (int y=-20; y<20; y++) {
            for (int z=-20; z<20; z++) {
                point3d endpoint ((float) x*0.05f, (float) y*0.05f, (float) z*0.05f);
                tree.updateNode(endpoint, true); // integrate 'occupied' measurement
            }
        }
    }
}
int main(int argc, char **argv){
    ros::init(argc, argv, "octomap_publisher");
    ros::NodeHandle nh;
    create_octree();                //octree is created. 
    //tree.writeBinary("test.bt");  // to test if the tree is created. 
    
    ros::Publisher octomap_pub = nh.advertise<octomap_msgs::Octomap>("example_octomap", 1000);

    octomap_msgs::Octomap bmap_msg;
    bmap_msg.binary = true; 
    bmap_msg.id = "OcTree"; 
    bmap_msg.header.seq = seq; 
    bmap_msg.header.stamp = ros::Time::now();
    bmap_msg.header.frame_id = "map";
    octomap_msgs::binaryMapToMsg(tree, bmap_msg); // (.bt)
    
    cout<<"\n"<<"message_id: "<<bmap_msg.id<<endl;
    if(bmap_msg.binary){cout<<"true"<<endl;}else{cout<<"false"<<endl;}; 
    cout<<"header: "<<bmap_msg.header<<endl;
    cout<<"resolution: "<<bmap_msg.resolution<<endl;
    cout<<"size of data array: "<<sizeof(bmap_msg.data)<<endl; 
    
    octomap_pub.publish(bmap_msg);
    seq +=1; 
    ros::spin();
    return 0;
}