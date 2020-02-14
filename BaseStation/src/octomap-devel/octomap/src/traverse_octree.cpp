//
// Created by tharushi on 9/24/18.
//
//This program is used to analyze a bonsai tree file (eg: ocTree.bt) and traverse through its nodes, then print its content.

#include <octomap/octomap.h>
#include <octomap/OcTree.h>

using namespace std;
using namespace octomap;

int main(int argc, char** argv){
    OcTree* octree1 = new OcTree("tree_random.bt");

    double resolution1 = octree1->getResolution();
    cout<<"Resolution is: "<<resolution1<<endl;

    octree1->expand();
    int size = octree1->getNumLeafNodes();
    cout<<"Number of leafs in: "<<size<<endl;

    double x1, y1, z1;
    octree1->getMetricSize(x1, y1, z1);
    cout<<"Bounding box size\tx1 : "<<x1<<"\t"<<"y1: "<<y1<<"\t"<<"z1: "<<z1<<endl;

    double x2, y2, z2;
    octree1->getMetricMin(x2, y2, z2);
    cout<<"Bounding box minimum\tx2 : "<<x2<<"\t"<<"y2: "<<y2<<"\t"<<"z2: "<<z2<<endl;

    double x3, y3, z3;
    octree1->getMetricMax(x3, y3, z3);
    cout<<"Bounding box maximum\tx3 : "<<x3<<"\t"<<"y3: "<<y3<<"\t"<<"z3: "<<z3<<endl;

    string type = octree1->getTreeType();
    cout<<"Tree Type: "<<type<<endl;

    size_t memory = octree1->memoryUsage();
    cout<<"Memory usage: "<<memory<<endl;

    OcTreeNode* node = octree1->search((double)0.425,(double) 0.875, (double) 1.625);
    cout<<"node: "<< node<<endl;

    string fileName="octree_data_analyzer.txt";
    ofstream offile;
    offile.open(fileName.c_str(), ios::app);

    if(offile.is_open()) {

        //Traverse through all the nodes of the tree icluding all parents and all children.

        /*offile<<"All the nodes of the Tree..........\n\n";
        for(OcTree::tree_iterator iterator = octree1->begin_tree(), end=octree1->end_tree(); iterator!=end; ++iterator){
            //cout<"Node center: "<<iterator.getCoordinate()<<"\t;";
            //cout<<"Node Size: "<<iterator.getSize()<<"\t";
            //cout<<"Node Value: "<<iterator->getValue()<<endl;
            offile<<"Node center: "<<iterator.getCoordinate()<<"\t\t"<<"Node Size: "<<iterator.getSize()<<"\t\t"<<"Node Value: "<<iterator->getValue()<<endl;
        }*/

        //Traversing only the leaf nodes of the tree
        offile<<"\n\nLeaf Nodes of the tree.\n\n";
        for(OcTree::leaf_iterator it = octree1->begin_leafs(), end=octree1->end_leafs(); it!=end; ++it){
            offile<<"Node center: "<<it.getCoordinate()<<"\t\t"<<"Node Size: "<<it.getSize()<<"\t\t"<<"Node Value: "<<it->getValue()<<endl;
        }


        offile.close();
        delete octree1; //clear the variable
    }

}
