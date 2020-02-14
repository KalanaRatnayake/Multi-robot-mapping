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

using namespace octomap; 
using namespace std; 

#define PI 3.14159265

double resolution = 0.04; 
const int robot_count = 2;  
static int seq_num = 1; 
static bool completeness[robot_count]; 
//static bool complete = true; 

float floor_z = -0.14f;       //To remove the floor values

//for Robot1 
//rotation in clockwise
const int yaw_1 = 0;           
//translation in meters. Check the positive direction with the robot's frames. 
const float x_translation_1 = 0.00f, y_translation_1 = 0.00f;   

//for Robot2 
const int yaw_2 = 0;
const float x_translation_2 = 0.0f, y_translation_2 = 4.26f;


ColorOcTree tree_final(resolution);

//The temporary tree variables, which are cleared after every subscription 
AbstractOcTree* tree;
ColorOcTree* color_octree; 



//The Subscriber Publisher Class for the Map Merge Process ---------------------------------------------
//------------------------------------------------------------------------------------------------------
class SubscribeAndPublish{
public:
    SubscribeAndPublish(){
        pub = nh.advertise<octomap_msgs::Octomap>("octomap_merged",1, true);
        sub1 = nh.subscribe("/qbot1/octomap_full", 1000, &SubscribeAndPublish::octomap_callback_1, this);
        sub2 = nh.subscribe("/qbot2/octomap_full", 1000, &SubscribeAndPublish::octomap_callback_2, this);
    }

    void octomap_callback_1(const octomap_msgs::Octomap::ConstPtr& msg){
        cout<<"Octomap message of robot 1 received"<<endl; 

        octomap_msgs::Octomap received_msg = *msg; 
        tree = octomap_msgs::fullMsgToMap(received_msg); 
        color_octree = dynamic_cast<ColorOcTree*>(tree);
        color_octree->expand(); 
        
        for(ColorOcTree::leaf_iterator it = color_octree->begin_leafs(), end=color_octree->end_leafs(); it!=end; ++it){
            
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
                    ColorOcTreeNode* key = tree_final.search(x_transformed, y_transformed, z);
                    key->setColor(it->getColor());

                }else{
                    tree_final.updateNode(node, false);
                    
                }
            }
        }
        completeness[0] = true;     // Mark the map1 as complete 
        bool complete = true; 
        for(int i=0; i<robot_count; i++){
            if(!completeness[i]){
                complete = false; 
                break;
            }
        }
    
        color_octree->clear(); 
        tree->clear(); 

        //Publish data as live Octomap stream 
        octomap_msgs::Octomap fmap_msg;
        octomap_msgs::fullMapToMsg(tree_final, fmap_msg);  

        fmap_msg.header.seq = seq_num;  seq_num+=1; 
        fmap_msg.header.stamp = ros::Time::now();
        fmap_msg.header.frame_id = "world"; 
        pub.publish(fmap_msg);

        if(complete){
            tree_final.write("complete.ot");
            cout << "Check the complete map at: complete.ot"<<endl;  
            
            //tree_final.clear(); 
            
            for(int j=0; j<robot_count; j++){
                completeness[j] = false; 
            }
        
        }else{
            tree_final.write("partial.ot");
            cout<<"check the partial map at: partial.ot"<<endl;
        }
    }

    void octomap_callback_2(const octomap_msgs::Octomap::ConstPtr& msg){
        cout<<"Octomap message of robot 2 received"<<endl; 

        octomap_msgs::Octomap received_msg = *msg; 
        tree = octomap_msgs::fullMsgToMap(received_msg); 
        color_octree = dynamic_cast<ColorOcTree*>(tree);
        color_octree->expand(); 
        
        for(ColorOcTree::leaf_iterator it = color_octree->begin_leafs(), end=color_octree->end_leafs(); it!=end; ++it){
            
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
                    ColorOcTreeNode* key = tree_final.search(x_transformed, y_transformed, z);
                    key->setColor(it->getColor());

                }else{
                    tree_final.updateNode(node, false);
                    
                }
            }
        }
        completeness[1] = true;     // Mark the map2 as complete 
        bool complete = true; 
        for(int i=0; i<robot_count; i++){
            if(!completeness[i]){
                complete = false; 
                break;
            }
        }
    
        color_octree->clear(); 
        tree->clear(); 

        //Publish data as live Octomap stream 
        octomap_msgs::Octomap fmap_msg;
        octomap_msgs::fullMapToMsg(tree_final, fmap_msg);  

        fmap_msg.header.seq = seq_num;  seq_num+=1; 
        fmap_msg.header.stamp = ros::Time::now();
        fmap_msg.header.frame_id = "world"; 
        pub.publish(fmap_msg);

        if(complete){
            tree_final.write("complete.ot");
            cout << "Check the complete map at: complete.ot"<<endl;  
            
            //tree_final.clear(); 
            
            for(int j=0; j<robot_count; j++){
                completeness[j] = false; 
            }
        
        }else{
            tree_final.write("partial.ot");
            cout<<"check the partial map at: partial.ot"<<endl;
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
    ros::spin(); 
    return 0; 
}
