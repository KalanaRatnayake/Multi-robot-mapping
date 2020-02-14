//
// Created by tharushi on 9/29/18.
//
//This program is used to simply merge two bonsai trees only looking at the spatial coordinates
//need more mathematical feature algorithms to merge real maps

#include <octomap/octomap.h>
#include <octomap/OcTree.h>

using namespace std;
using namespace octomap;

int main(int argc, char** argv){
    OcTree tree(0.04);

    OcTree* octree1 = new OcTree("tree_transformed_1.bt");
    OcTree* octree2 = new OcTree("tree_transformed_6.bt");

    octree1->expand();
    octree2->expand();

    for(OcTree::leaf_iterator it = octree1->begin_leafs(), end=octree1->end_leafs(); it!=end; ++it){

        point3d endpoint (it.getX(), it.getY(), it.getZ());
        float probability = it->getValue();
        if(probability >0.0){
            tree.updateNode(endpoint, true);
        }else{
            tree.updateNode(endpoint, false);
        }
    }
    for(OcTree::leaf_iterator it = octree2->begin_leafs(), end=octree2->end_leafs(); it!=end; ++it){

            point3d endpoint (it.getX(), it.getY(), it.getZ());
            if(!tree.search(endpoint)) {
                float probability = it->getValue();
                if (probability > 0.0) {
                    tree.updateNode(endpoint, true);
                } else {
                    tree.updateNode(endpoint, false);
                }
            }
        }


    tree.writeBinary("merged_map_1_6.bt");
    delete octree1;
    delete octree2;
    cout<<"Successfully merged the map 1 and map 6!"<<endl<<"Check the merged_map_1_6.bt for results"<<endl;

}

