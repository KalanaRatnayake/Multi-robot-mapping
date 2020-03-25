//This node is used to read data from a color octomap_msgs/Octomap, 
//transform according to a given transformation and save in .ot format. 

#include "ros/ros.h"
#include "octomap_msgs/Octomap.h"
#include "octomap_msgs/conversions.h"
#include "octomap/AbstractOcTree.h"
#include "octomap/OcTree.h"
#include "octomap/ColorOcTree.h"
#include "octomap/OcTreeNode.h"
#include <string>
#include <ctime>                // measure the elapsed time in clock cycles

using namespace octomap; 
using namespace std; 

#define PI 3.14159265

double resolution = 0.02; 
const int robot_count = 2;  
clock_t init = clock();         // time of initialization

float floor_z = -0.20f;       //To remove the floor values

//for Robot1 
//rotation in clockwise
const int yaw = 0;           
//translation in meters. Check the positive direction with the robot's frames. 
const float x_translation = 0.00f, y_translation = 2.00f;   

ColorOcTree tree_final(resolution);

//The temporary tree variables, which are cleared after evert subscription 
AbstractOcTree* tree;
ColorOcTree* color_octree; 


void octomap_callback(const octomap_msgs::Octomap::ConstPtr& msg){
    clock_t publish_time = clock();                     // time to publish from octomap_server
    cout<<"Octomap message of robot 1 received"<<endl; 

    octomap_msgs::Octomap received_msg = *msg; 
    tree = octomap_msgs::fullMsgToMap(received_msg); 
    color_octree = dynamic_cast<ColorOcTree*>(tree);
    color_octree->expand(); 
    int size = color_octree->size(); 
    for(ColorOcTree::leaf_iterator it = color_octree->begin_leafs(), end=color_octree->end_leafs(); it!=end; ++it){
         
        float x = it.getX() + x_translation; 
        float y = it.getY() + y_translation; 
        float z = it.getZ();

        float sinValue = sin(yaw*PI/180);
        float cosValue = cos(yaw*PI/180); 

        float x_transformed = x*cosValue - y*sinValue; 
        float y_transformed = x*sinValue + y*cosValue; 

        if(z>floor_z){
            point3d node(x_transformed, y_transformed, z);
        
            if(it->getValue()>0.0){
                tree_final.updateNode(node, true);
                ColorOcTreeNode* key = tree_final.search(x_transformed, y_transformed, z);
                key->setColor(it->getColor());

            }else{
                tree_final.updateNode(node, false);
                
            }
        }
    }
    
    color_octree->clear(); 
    tree->clear(); 

    tree_final.write("robot1.ot");
    clock_t transform = clock();        //time to finish the transform 
    double transform_time = double(transform - publish_time); 
    double interval = double(publish_time - init); 

    cout<<size<<"\t"<<interval<<"\t"<<transform_time<<endl;
    
}

int main(int argc, char **argv){
    
    ros::init(argc, argv, "color_octomap_sub"); 
    ros::NodeHandle nh; 
    ros::Subscriber sub = nh.subscribe("octomap_full", 1000, octomap_callback); 
    ros::spin(); 
    return 0; 
}
