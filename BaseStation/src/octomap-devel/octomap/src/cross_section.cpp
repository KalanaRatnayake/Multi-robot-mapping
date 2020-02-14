//cross section
// Created by tharushi on 10/13/18.
//

//change the line 12 to change the map file. line 30 and 31 to change the height
#include <octomap/octomap.h>
#include <octomap/OcTree.h>

using namespace std;
using namespace octomap;

OcTree* octree1 = new OcTree("ice_lab/file6.bt");
double resolution = octree1->getResolution();
double error = resolution/2;

OcTree tree(resolution);

int main(int argc, char** argv){

    cout<<resolution<<error<<endl;
    string fileName="octree_data_analyzer.txt";
    ofstream offile;
    offile.open(fileName.c_str(), ios::app);

    if(offile.is_open()) {

        //Traversing only the leaf nodes of the tree
        offile<<"\n\nLeaf Nodes of the tree.\n\n";
        for(OcTree::leaf_iterator it = octree1->begin_leafs(), end=octree1->end_leafs(); it!=end; ++it){
            if(it.getZ() == 0 + error) {    //for the ground level
            //if(it.getZ() == 0 +24*resolution +error) {    //for the level = 1 m
                float x = it.getX(); float y = it.getY(); float z = it.getZ(); double occupancy = it->getValue();
                //offile<<x<<"\t"<<y<<"\t"<<z<<endl;
                point3d node(x,y,z);
                tree.updateNode(node, (occupancy>0));
            }
        }


        offile.close();
        delete octree1; //clear the variable
    }
    tree.writeBinary("tree_test.bt");

}


