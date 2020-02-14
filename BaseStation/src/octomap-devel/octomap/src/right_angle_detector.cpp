//
// Created by tharushi on 10/14/18.
//check for line 129, 131 when changing the file names :D
#include <octomap/octomap.h>
#include <octomap/OcTree.h>
#include "boost/lexical_cast.hpp"
#include <math.h>
#include <map>
#include <iomanip> // setprecision
#include <sstream> // stringstream


using namespace std;
using namespace octomap;
using boost::lexical_cast;

double resolution = 0.04;
OcTree tree (resolution);  // create empty tree with resolution 0.05
OcTree corner_tree(resolution);

static std::map<string, bool> corners;

float a_next(float a_current, char next_chain){

    if(next_chain =='0'){
        a_current+=resolution;
    }else if(next_chain =='2'){
        a_current-=resolution;
    }
    return a_current;
}
float b_next(float b_current, char next_chain){

    if(next_chain =='1'){
        b_current+=resolution;
    }else if(next_chain =='3'){
        b_current-=resolution;
    }
    return b_current;
}

void detectRightAngle(string chain, int i, float a, float b, float c, string corner_sequence){
    //if(chain.substr(i+10, 2) == corner_sequence){
        string sub_chain = chain.substr(i, 22); //subchain - starting from i  a=chain[0]
        int count1 = 0; int count2 = 0;
        for(int j=0; j<22; j++){
            if(j<10){
                if (sub_chain[j]==corner_sequence[0]){
                    count1+=1;
                }
            }else{
                if(sub_chain[j]==corner_sequence[1]){
                    count2+=1;
                }
            }
        }
        if(count1>5 and count2>5){      //if right angle, copy the sub chain

            float a_temp = a;
            float b_temp = b;
            float c_temp = c;
            point3d node_start(a_temp, b_temp, c_temp);
            //cout<<sub_chain<<endl;
            for(int k=1; k<22; k++){
                point3d node(a_temp, b_temp, c_temp);

                if(k==11){

                    stringstream stream;
                    stream << fixed << setprecision(2) << a_temp <<"\t"<< fixed << setprecision(2) << b_temp<<"\t"<<c_temp;
                    string query = stream.str();
                    //insert the value to the map
                    if(!corners.count(query)) {
                        corners.insert(std::pair<string, bool>(query, true));
                    }
                }

                if(tree.search(node) == 0){
                    tree.updateNode(node, true);
                }
                a_temp = a_next(a_temp, sub_chain[k]);
                b_temp = b_next(b_temp, sub_chain[k]);

            }
        }
   // }
}

int main(int argc, char** argv) {

    ifstream ifile;
    ifile.open ("octree_data_analyzer.txt");
    float a,b,c; string chain;
    int count = 1;
    while(ifile >>a>>b>>c>>chain){
        //if(count ==115) {
                                                //a, b, c are the coordinates of the start point of the chaincode
            int range = chain.length()-10;
            for(int i=0; i<range; i++){

                a = a_next(a, chain[i]);        //a and b are updated while going forward the chaincode
                b = b_next(b, chain[i]);

                string corner_sequence = chain.substr(i+10, 2);
                if(corner_sequence == "01"){
                    detectRightAngle(chain, i, a, b,  c, "10");
                }else if(corner_sequence == "01"){
                    detectRightAngle(chain, i, a, b,  c, "10");
                }else if(corner_sequence == "12"){
                    detectRightAngle(chain, i, a, b,  c, "12");
                }else if(corner_sequence == "21"){
                    detectRightAngle(chain, i, a, b,  c, "21");
                }else if(corner_sequence == "23"){
                    detectRightAngle(chain, i, a, b,  c, "23");
                }else if(corner_sequence == "32"){
                    detectRightAngle(chain, i, a, b,  c, "32");
                }else if(corner_sequence == "30"){
                    detectRightAngle(chain, i, a, b,  c, "30");
                }else if(corner_sequence == "03"){
                    detectRightAngle(chain, i, a, b,  c, "03");
                } else continue;

            //}
        }
        count += 1;
    }

    ifile.close();
    tree.writeBinary("angles_demo.bt");

    string fileName="right_angles_demo.txt";
    ofstream offile;
    offile.open(fileName.c_str(), ios::app);
    if(offile.is_open()) {
        for (std::map<string, bool>::iterator it=corners.begin(); it!=corners.end(); ++it) {
            offile << it->first<<endl;
        }
    }
    offile.close();


}

