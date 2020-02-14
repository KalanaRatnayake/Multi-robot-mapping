//
// Created by tharushi on 11/4/18.
//

#include <octomap/octomap.h>
#include <octomap/OcTree.h>
#include "boost/lexical_cast.hpp"
#include <map>
#include <sstream> // stringstream
#include <iostream>
#include <fstream>
#include <math.h>


#define PI 3.14159265

using namespace std;
using namespace octomap;
using boost::lexical_cast;

double resolution = 0.04;
//OcTree tree (resolution);  // create empty tree with resolution 0.05
//OcTree corner_tree(resolution);


OcTree tranformed_tree_1(resolution);
OcTree tranformed_tree_3(resolution);
OcTree tranformed_tree_5(resolution);
OcTree tranformed_tree_6(resolution);

static string file1 = "right_angles_3.txt";
static string file3 = "right_angles_2.txt";
static string file5 = "right_angles_5.txt";
static string file6 = "right_angles_6.txt";

struct Coordinates3D {
    float coords[3];
};

struct pointPair{
    string pair[2];
};

static std::map<string, Coordinates3D> map1_points;         // to store coordinates of points in map 1
static std::map<string, Coordinates3D> map2_points;

static std::map<pointPair, double> map1_pair_distances;   //to store point pairs of map 1
static std::map<pointPair, double> map2_pair_distances;   //to store point pairs of map 2

void copy_Points_to_vector1(string fileName, int mapId){
    if(mapId== 1){
        ifstream ifile;
        ifile.open(fileName.c_str(), ios::in);
        float a,b,c;
        int i = 0;
        while(ifile >>a>>b>>c){
            i+=1;
            Coordinates3D temp = {a, b, c};
            //temp[0] = a; temp[1] = b;  temp[2] = c;
            map1_points.insert(std::pair<string,Coordinates3D>(lexical_cast<string>(i), temp));
        }
        ifile.close();
    }else if(mapId== 2){
        ifstream ifile;
        ifile.open(fileName.c_str(), ios::in);
        float a,b,c;
        int i = 0;
        while(ifile >>a>>b>>c){
            i+=1;
            Coordinates3D temp = {a, b, c};
            //temp[0] = a; temp[1] = b;  temp[2] = c;
            map2_points.insert(std::pair<string,Coordinates3D>(lexical_cast<string>(i), temp));
        }
        ifile.close();
    }
}

void printCoordinateMap(int mapID) {
    if(mapID==1){
        for (std::map<string, Coordinates3D>::iterator it=map1_points.begin(); it!=map1_points.end(); ++it) {
            cout<<it->first<<"\t";
            Coordinates3D center_node = map1_points[it->first];
            cout<<center_node.coords[0]<<endl;
        }
    }else if(mapID==2){
        for (std::map<string, Coordinates3D>::iterator it=map2_points.begin(); it!=map2_points.end(); ++it) {
            cout<<it->first<<"\t";
            Coordinates3D center_node = map1_points[it->first];
            cout<<center_node.coords[0]<<endl;
        }
    }

}
/*
void calculate_distance_of_pairs(int mapID){
    if(mapID==1){
        for(std::map<string, Coordinates3D>::iterator it_i=map1_points.begin(); it_i!=map1_points.end(); ++it_i) {

            Coordinates3D center_node_1 = map1_points[it_i->first]; //1st node

            for(std::map<string, Coordinates3D>::iterator it_j=map1_points.begin(); it_j!=map1_points.end(); ++it_j) {
                if(it_i->first != it_j->first){

                    pointPair p = {it_i, it_j};

                    Coordinates3D center_node_2 = map1_points[it_j->first]; //second node.

                    double value = pow((center_node_1.coords[0] - center_node_2.coords[0]),2);
                    cout<<value<<endl;
                                   // + pow((center_node_1.coords[1] - center_node_2.coords[1]),2)
                                    //+ pow((center_node_1.coords[2] - center_node_2.coords[2]),2);

                    //float distance = pow(value , 0.5);
                   // map1_pair_distances.insert(std::pair<pointPair,double>(p, distance));

                }
            }
        }
    }
    else if(mapID == 2){
        cout<<"2"<<endl;
    }
}
*/

void transformTree(int mapNo) { //this function assumes that we know the transform.

    if(mapNo == 3){

        float x1=2.38, y1=5.78, x2=3.62, y2=0.34;

        float degree = atan((y1-y2)/(x2-x1));        //rotate by 30 degree angle

        OcTree* octree3 = new OcTree("ice_lab/file3.bt");
        octree3->expand();
        for(OcTree::leaf_iterator it = octree3->begin_leafs(), end=octree3->end_leafs(); it!=end; ++it){

            float sinValue = sin(degree);
            float cosValue = cos(degree);

            //bring focus point to origin
            float x_translated = it.getX()-x1, y_translated = it.getY()-y1;

            //counter clockwise rotation around origin
            point3d endpoint (x_translated*cosValue - y_translated*sinValue, x_translated*sinValue + y_translated*cosValue, it.getZ());

            float probability = it->getValue();

            if(probability >0) {
                tranformed_tree_3.updateNode(endpoint, true);
            }else{
                tranformed_tree_3.updateNode(endpoint, false);
            }
        }
        tranformed_tree_3.writeBinary("tree_transformed_3.bt");
        delete octree3;
    }
    else if(mapNo == 1){       //for the second round of merging

        float x1=1.94, y1=0.86, x2=3.62, y2=0.34;

        float degree = atan((y1-y2)/(x2-x1));        //rotate by 30 degree angle

        OcTree* octree1 = new OcTree("ice_lab/file3.bt");
        octree1->expand();
        for(OcTree::leaf_iterator it = octree1->begin_leafs(), end=octree1->end_leafs(); it!=end; ++it){

            float sinValue = sin(degree);
            float cosValue = cos(degree);

            //bring focus point to origin
            float x_translated = it.getX()-x1, y_translated = it.getY()-y1;

            //counter clockwise rotation around origin
            point3d endpoint (x_translated*cosValue - y_translated*sinValue, x_translated*sinValue + y_translated*cosValue, it.getZ());

            float probability = it->getValue();

            if(probability >0) {
                tranformed_tree_1.updateNode(endpoint, true);
            }else{
                tranformed_tree_1.updateNode(endpoint, false);
            }
        }
        tranformed_tree_1.writeBinary("tree_transformed_1.bt");
        delete octree1;
    }
    else if(mapNo == 5){

        float x1=0.94, y1=-1.18, x2=1.18, y2=4.50;

        float degree = atan((y2-y1)/(x2-x1));        //rotate by 30 degree angle

        OcTree* octree5 = new OcTree("ice_lab/file5.bt");
        octree5->expand();
        for(OcTree::leaf_iterator it = octree5->begin_leafs(), end=octree5->end_leafs(); it!=end; ++it){

            float sinValue = sin(degree);
            float cosValue = cos(degree);

            //translate focus point to origin
            float x_translated = it.getX()-x1, y_translated = it.getY()-y1;

            //rotate clockwise around origin
            point3d endpoint (x_translated*cosValue + y_translated*sinValue, y_translated*cosValue -x_translated*sinValue, it.getZ());

            float probability = it->getValue();

            if(probability >0) {
                tranformed_tree_5.updateNode(endpoint, true);
            }else{
                tranformed_tree_5.updateNode(endpoint, false);
            }
        }
        tranformed_tree_5.writeBinary("tree_transformed_5.bt");
        delete octree5;
    }
    else if(mapNo == 6){

        float x1=1.02, y1=2.66, x2=3.02, y2=2.10;

        float degree = atan((y1-y2)/(x2-x1));        //rotate by 30 degree angle

        OcTree* octree6 = new OcTree("ice_lab/file6.bt");
        octree6->expand();
        for(OcTree::leaf_iterator it = octree6->begin_leafs(), end=octree6->end_leafs(); it!=end; ++it){

            float sinValue = sin(degree);
            float cosValue = cos(degree);

            //translate focus point to origin
            float x_translated = it.getX()-x1, y_translated = it.getY()-y1;

            //counter clockwise rotation around origin
            point3d endpoint (x_translated*cosValue - y_translated*sinValue, x_translated*sinValue + y_translated*cosValue, it.getZ());

            float probability = it->getValue();

            if(probability >0) {
                tranformed_tree_6.updateNode(endpoint, true);
            }else{
                tranformed_tree_6.updateNode(endpoint, false);
            }
        }
        tranformed_tree_6.writeBinary("tree_transformed_6.bt");
        delete octree6;
    }
}


int main(int argc, char **argv) {

    copy_Points_to_vector1(file1, 1);
    copy_Points_to_vector1(file3, 2);

    transformTree(1);
    transformTree(6);

}