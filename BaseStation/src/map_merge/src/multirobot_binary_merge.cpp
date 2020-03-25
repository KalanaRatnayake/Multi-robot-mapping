//This node is used to read data from a color octomap_msgs/Octomap, 
//transform according to a given transformation and save in .ot format. 

#include "ros/ros.h"
#include "octomap_msgs/Octomap.h"
#include "octomap_msgs/conversions.h"
#include "octomap/AbstractOcTree.h"
#include "octomap/OcTree.h"
#include "octomap/ColorOcTree.h"
#include "octomap/OcTreeNode.h"
#include "turtlesim/Color.h"

using namespace octomap; 
using namespace std; 

#define PI 3.14159265

double resolution = 0.04; 
const int robot_count = 2; 
static int map_count = 0; 


float floor_z = 0.00f;       //To remove the floor values

//for Robot1 
//rotation in clockwise
const int yaw_1 = 30;           
//translation in meters. Check the positive direction with the robot's frames. 
const float x_translation_1 = 2.00f, y_translation_1 = 2.00f;   

//for Robot2 
const int yaw_2 = 0;
const float x_translation_2 = 0.00f, y_translation_2 = 0.00f;


OcTree tree_final(resolution);

//The temporary tree variables, which are cleared after evert subscription 
AbstractOcTree* tree;
OcTree* binary_octree; 

void octomap_callback_1(const octomap_msgs::Octomap::ConstPtr& msg){
    cout<<"Octomap message received"<<endl; 
    if(map_count==robot_count){
        tree_final.clear();         //If all the maps are integrated, clear the variable at the begining of new phase. 
        map_count =0; 
    }else{
        map_count+=1; 
    }

    octomap_msgs::Octomap received_msg = *msg; 
    tree = octomap_msgs::binaryMsgToMap(received_msg); 
    binary_octree = dynamic_cast<OcTree*>(tree);
    binary_octree->expand(); 
    
    for(OcTree::leaf_iterator it = binary_octree->begin_leafs(), end=binary_octree->end_leafs(); it!=end; ++it){
         
        float x = it.getX() + x_translation_1; 
        float y = it.getY() + y_translation_1; 
        float z = it.getZ();

        float sinValue = sin(yaw_1*PI/180);
        float cosValue = cos(yaw_1*PI/180); 

        float x_transformed = x*cosValue - y*sinValue; 
        float y_transformed = x*sinValue + y*cosValue; 

        if(z>floor_z){
            point3d node(x_transformed, y_transformed, z);
        
            if(it->getValue()>0.0){
                tree_final.updateNode(node, true);

            }else{
                tree_final.updateNode(node, false);
                
            }
        }
    }
    tree_final.writeBinary("example_binary.bt"); 
    if(map_count == robot_count){
        cout<<"written Complete map to the file!"<<endl; 
    }else{
        cout<<"Written Partial map to file!"<<endl; 
    }
    binary_octree->clear(); 
    tree->clear(); 
}

void octomap_callback_2(const octomap_msgs::Octomap::ConstPtr& msg){

    if(map_count==robot_count){
        tree_final.clear();         //If all the maps are integrated, clear the variable at the begining of new phase. 
    }else{
        map_count+=1; 
    }

    octomap_msgs::Octomap received_msg = *msg;  
    tree = octomap_msgs::binaryMsgToMap(received_msg); 
    binary_octree = dynamic_cast<OcTree*>(tree);
    binary_octree->expand(); 
    
    for(OcTree::leaf_iterator it = binary_octree->begin_leafs(), end=binary_octree->end_leafs(); it!=end; ++it){
         
        float x = it.getX() + x_translation_2; 
        float y = it.getY() + y_translation_2; 
        float z = it.getZ();

        float sinValue = sin(yaw_2*PI/180);
        float cosValue = cos(yaw_2*PI/180); 

        float x_transformed = x*cosValue - y*sinValue; 
        float y_transformed = x*sinValue + y*cosValue; 

        if(z>floor_z){
            point3d node(x_transformed, y_transformed, z);
        
            if(it->getValue()>0.0){
                tree_final.updateNode(node, true);

            }else{
                tree_final.updateNode(node, false);
                
            }
        }
    }
    tree_final.writeBinary("example_binary.bt"); 
    if(map_count == robot_count){
        cout<<"written Complete map to the file!"<<endl; 
    }else{
        cout<<"Written Partial map to file!"<<endl; 
    }
    binary_octree->clear(); 
    tree->clear(); 
}


int main(int argc, char **argv){
    ros::init(argc, argv, "binary_octomap_sub");
    ros::NodeHandle nh; 
    ros::Subscriber sub = nh.subscribe("/qbot1/octomap_binary", 1000, octomap_callback_1); 
    //ros::Subscriber sub2 = nh.subscribe("/octomap_full", 1000, octomap_callback_2); 
    ros::spin(); 
    return 0; 
}
