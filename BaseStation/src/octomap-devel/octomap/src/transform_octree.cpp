//
// Created by tharushi on 10/01/18.
//
//this algorithm is used to transform a octree in multiples of 90 degrees.

#include <octomap/octomap.h>
#include <octomap/OcTree.h>
#include <math.h>

using namespace std;
using namespace octomap;

#define PI 3.14159265

int main(int argc, char** argv){        // provide arguments as:    input_file_name, degree_of_rotation, axis of rotation.

    int degree = 30;           //clockwise
    string axis_of_rotation = "Z";

    OcTree tree(0.05);
    //float difference = 0.025f; //the node center will be this much away from the actual data point.
    OcTree* octree1 = new OcTree("tree_test.bt");
    octree1->expand();

    if(axis_of_rotation=="Z"){  //this is the default case

        for(OcTree::leaf_iterator it=octree1->begin_leafs(), end=octree1->end_leafs(); it!=end; ++it){

            float sinValue = sin(degree*PI/180);
            float cosValue = cos(degree*PI/180);

            point3d endpoint (it.getX()*cosValue - it.getY()*sinValue, it.getX()*sinValue + it.getY()*cosValue, it.getZ());
            float probability = it->getValue();
            if(probability>0.0){
                tree.updateNode(endpoint, true);
            }else{
                tree.updateNode(endpoint, false);
            }
        }

    }
    else{
        cout<<"yet to implement"<<endl;
    }

    cout<<"Checkout the final map by octovis tree_transformed.bt"<<endl;

    tree.writeBinary("tree1_transformed.bt");
    delete octree1;

}



