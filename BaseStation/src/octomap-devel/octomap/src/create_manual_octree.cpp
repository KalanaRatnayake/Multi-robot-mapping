//
// Created by tharushi on 9/23/18.
//
#include <octomap/octomap.h>
#include <octomap/OcTree.h>

using namespace std;
using namespace octomap;


void print_query_info(point3d query, OcTreeNode* node) {
    if (node != NULL) {
        cout << "occupancy probability at " << query << ":\t " << node->getOccupancy() << endl;
    }
    else
        cout << "occupancy probability at " << query << ":\t is unknown" << endl;
}

int main(int argc, char** argv) {

    cout << endl;
    cout << "generating example map" << endl;

    OcTree tree (0.04);  // create empty tree with resolution 0.05

    point3d endpoint ((float) 0, (float) 0, (float) 0*0.02f);
    tree.updateNode(endpoint, true); // integrate 'occupied' measurement

    point3d endpoint1 ((float) 30*0.02f, (float) 60*0.02f, (float) 0*0.02f);
    tree.updateNode(endpoint1, true); // integrate 'occupied' measurement

    point3d endpoint2 ((float) 50*0.02f, (float) -70*0.02f, (float) 0*0.02f);
    tree.updateNode(endpoint2, true); // integrate 'occupied' measurement

    point3d endpoint3 ((float) -20*0.02f, (float) -100*0.02f, (float) 0*0.02f);
    tree.updateNode(endpoint3, true);

    point3d endpoint4 ((float) -40*0.02f, (float) 80*0.02f, (float) 0*0.02f);
    tree.updateNode(endpoint4, true); // integrate 'occupied' measurement
    //for Octree1 - uncomment -----------------------------------------------------------------------------------------
    // insert some measurements of occupied cells
/*    for (int x=20; x<60; x++) {
        for (int y=30; y<40; y++) {
            for (int z=0; z<40; z++) {
                point3d endpoint ((float) x*0.05f, (float) y*0.05f, (float) z*0.05f);
                tree.updateNode(endpoint, true); // integrate 'occupied' measurement
            }
        }
    }
    for (int x=40; x<50; x++) {
        for (int y=10; y<20; y++) {
            for (int z=0; z<10; z++) {
                point3d endpoint ((float) x*0.05f, (float) y*0.05f, (float) z*0.05f);
                tree.updateNode(endpoint, true); // integrate 'occupied' measurement
            }
        }
    }
*/
//for octree 2
/*    for (int x=-60; x<-20; x++) {
        for (int y=-40; y<-30; y++) {
            for (int z=0; z<40; z++) {
                point3d endpoint ((float) x*0.05f, (float) y*0.05f, (float) z*0.05f);
                tree.updateNode(endpoint, true); // integrate 'occupied' measurement
            }
        }
    }
    for (int x=-40; x<-20; x++) {
        for (int y=-70; y<-60; y++) {
            for (int z=0; z<10; z++) {
                point3d endpoint ((float) x*0.05f, (float) y*0.05f, (float) z*0.05f);
                tree.updateNode(endpoint, true); // integrate 'occupied' measurement
            }
        }
    }
*/
    //for rectangular features
    /*
    for (int x=0; x<40; x++) {
        for (int y=0; y<20; y++) {
            for (int z=0; z<10; z++) {
                point3d endpoint ((float) x*0.025f, (float) y*0.025f, (float) z*0.025f);
                tree.updateNode(endpoint, true); // integrate 'occupied' measurement
            }
        }
    }
    for (int x=0; x<20; x++) {
        for (int y=20; y<40; y++) {
            for (int z=0; z<10; z++) {
                point3d endpoint ((float) x*0.025f, (float) y*0.025f, (float) z*0.025f);
                tree.updateNode(endpoint, true); // integrate 'occupied' measurement
            }
        }
    }
    for (int x=30; x<60; x++) {
        for (int y=30; y<50; y++) {
            for (int z=0; z<10; z++) {
                point3d endpoint ((float) x*0.025f, (float) y*0.025f, (float) z*0.025f);
                tree.updateNode(endpoint, true); // integrate 'occupied' measurement
            }
        }
    }*/

    tree.writeBinary("tree_random.bt");
    cout << "wrote example file simple_tree.bt"<< endl;
    cout << "now you can use octovis to visualize: octovis tree_name.bt"  << endl;
    cout << "Hint: hit 'F'-key in viewer to see the freespace"<< endl;
}

