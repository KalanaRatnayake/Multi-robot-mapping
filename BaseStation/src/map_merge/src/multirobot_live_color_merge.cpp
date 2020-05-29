//This node is used to read data from a color octomap_msgs/Octomap, 
//transform according to a given transformation and save in .ot format. 

#include "ros/ros.h"
#include <ros/console.h>
#include <ros/callback_queue.h>

#include "octomap_msgs/Octomap.h"
#include "octomap_msgs/conversions.h"

#include "octomap/AbstractOcTree.h"
#include "octomap/OcTree.h"
#include "octomap/ColorOcTree.h"
#include "octomap/OcTreeNode.h"

#include <string>
#include <mutex>

using namespace octomap; 
using namespace std;

mutex tree_final_mutex;

#define PI 3.14159265

double resolution = 0.05; 
const int robot_count = 2;  
static int seq_num = 1; 
static bool completeness[robot_count]; 
//static bool complete = true; 

float floor_z = -0.14f;       /*To remove the floor values*/

ColorOcTree tree_final(resolution);

// The Subscriber Publisher Class for the Map Merge Process

class SubscribeAndPublish{
public:
    SubscribeAndPublish(){
        pub = nh.advertise<octomap_msgs::Octomap>("octomap_merged", 2, true);
        sub1 = nh.subscribe("bot_stream_1", 2, &SubscribeAndPublish::octomap_callback_bot1, this);
        sub2 = nh.subscribe("bot_stream_2", 2, &SubscribeAndPublish::octomap_callback_bot2, this);
        sub3 = nh.subscribe("bot_stream_3", 2, &SubscribeAndPublish::octomap_callback_bot3, this);
    }

    void octomap_callback_bot1(const octomap_msgs::Octomap::ConstPtr& msg){
        cout<<"Octomap of robot 1 received"<<endl;

        //converting the octomap_msg to octomap

        octomap_msgs::Octomap received_msg = *msg; 
        AbstractOcTree* bot_1_tree = octomap_msgs::fullMsgToMap(received_msg); 
        ColorOcTree* bot_1_colorTree = dynamic_cast<ColorOcTree*>(bot_1_tree);
        
        bot_1_colorTree->expand(); 
        
        for(ColorOcTree::leaf_iterator it = bot_1_colorTree->begin_leafs(), end=bot_1_colorTree->end_leafs(); it!=end; ++it){
            
            //coping the node data to new octomap

            if(it.getZ()>floor_z){
                point3d node(it.getX(), it.getY(), it.getZ());
            
                lock_guard<mutex> guard(tree_final_mutex);

                if(it->getValue()>0.0)
                {
                    tree_final.updateNode(node, true);
                    ColorOcTreeNode* key = tree_final.search(it.getX(), it.getY(), it.getZ());
                    key->setColor(it->getColor());
                } else {
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
    
        bot_1_tree->clear(); 
        bot_1_colorTree->clear(); 

        //Publish data as live Octomap stream
        lock_guard<mutex> guard(tree_final_mutex);

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

    void octomap_callback_bot2(const octomap_msgs::Octomap::ConstPtr& msg){
        cout<<"Octomap message of robot 2 received"<<endl;

        //converting the octomap_msg to octomap

        octomap_msgs::Octomap received_msg = *msg; 
        AbstractOcTree* bot_2_tree = octomap_msgs::fullMsgToMap(received_msg); 
        ColorOcTree* bot_2_colorTree = dynamic_cast<ColorOcTree*>(bot_2_tree);
        bot_2_colorTree->expand(); 
        
        for(ColorOcTree::leaf_iterator it = bot_2_colorTree->begin_leafs(), end=bot_2_colorTree->end_leafs(); it!=end; ++it){
            //coping the node data to new octomap

            if(it.getZ()>floor_z){
                point3d node(it.getX(), it.getY(), it.getZ());

                lock_guard<mutex> guard(tree_final_mutex);

                if(it->getValue()>0.0){
                    tree_final.updateNode(node, true);
                    ColorOcTreeNode* key = tree_final.search(it.getX(), it.getY(), it.getZ());
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
    
        bot_2_colorTree->clear(); 
        bot_2_tree->clear(); 

        //Publish data as live Octomap stream
        lock_guard<mutex> guard(tree_final_mutex);
        
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

    void octomap_callback_bot3(const octomap_msgs::Octomap::ConstPtr& msg){
        cout<<"Octomap message of robot 3 received"<<endl;

        //converting the octomap_msg to octomap

        octomap_msgs::Octomap received_msg = *msg; 
        AbstractOcTree* bot_3_tree = octomap_msgs::fullMsgToMap(received_msg); 
        ColorOcTree* bot_3_colorTree = dynamic_cast<ColorOcTree*>(bot_3_tree);
        bot_3_colorTree->expand(); 
        
        for(ColorOcTree::leaf_iterator it = bot_3_colorTree->begin_leafs(), end=bot_3_colorTree->end_leafs(); it!=end; ++it){
            //coping the node data to new octomap

            if(it.getZ()>floor_z){
                point3d node(it.getX(), it.getY(), it.getZ());

                lock_guard<mutex> guard(tree_final_mutex);

                if(it->getValue()>0.0){
                    tree_final.updateNode(node, true);
                    ColorOcTreeNode* key = tree_final.search(it.getX(), it.getY(), it.getZ());
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
    
        bot_3_colorTree->clear(); 
        bot_3_tree->clear(); 

        //Publish data as live Octomap stream
        lock_guard<mutex> guard(tree_final_mutex);
        
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
    ros::Subscriber sub3; 

};


int main(int argc, char **argv){
    
    for(int i=0; i<robot_count; i++) completeness[i] = false;
    
    ros::init (argc, argv, "color_octomap_sub");

    SubscribeAndPublish sap;
    
    ros::AsyncSpinner spinner(3);
    ros::Rate r(100); 
    
    spinner.start();

    ros::waitForShutdown();
    return 0; 
}
