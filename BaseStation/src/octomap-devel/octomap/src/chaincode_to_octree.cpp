//
// Created by tharushi on 10/13/18.
//

#include <octomap/octomap.h>
#include <octomap/OcTree.h>

using namespace std;
using namespace octomap;

int main(int argc, char** argv) {
    double resolution = 0.04;
    OcTree tree (0.04);  // create empty tree with resolution 0.05

    ifstream ifile;
    ifile.open ("octree_data_analyzer.txt");
    float a,b,c;
    string chain;
    int count =1;
    while(ifile >>a>>b>>c>>chain){
        //cout <<i<<"\t"<<a<<"\t"<<b<<endl;
        //point3d node(a,b,c);
        if(count ==115) {
            for (int i = 0; i < chain.length(); i++) {
                point3d node(a, b, c);
                if (tree.search(node) == 0) {
                    //cout << "not found before" << endl;
                    tree.updateNode(node, true);
                }
                //cout<<a<<"\t"<<b<<"\t"<<c<<endl;
                char direction = chain[i];
                if (direction == '0') {
                    a += resolution;
                } else if (direction == '1') {
                    b += resolution;
                } else if (direction == '2') {
                    a -= resolution;
                } else b -= resolution;
            }
        }
        count +=1;
    }

    ifile.close();
    tree.writeBinary("tree_test.bt");
    //cout << "wrote example file tree_test.bt"<< endl;
}
