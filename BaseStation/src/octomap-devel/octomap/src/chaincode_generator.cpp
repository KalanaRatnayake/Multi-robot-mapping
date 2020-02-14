//
// Created by tharushi on 10/01/18.
//
//This program is used to generate 2D chain-code of a feature atn a given level.
//check line 17 to change file names

#include <octomap/octomap.h>
#include <octomap/OcTree.h>
#include <map>
#include <string>
#include "boost/lexical_cast.hpp"

using namespace std;
using namespace octomap;
using boost::lexical_cast;

OcTree* octree1 = new OcTree("demo.bt");
const double resolution = octree1->getResolution();
const double error = resolution/2;

static std::map<string, string> lut;                           //lut is the lookup table to generate chain code.

bool isObstacle(OcTreeNode *node){
    if(node!=0 && node->getValue()>3){
        return true;
    }else return false;
}

//the node x,y, z is assumed to be proven an obstacle to execute this function
string getFourDirectionCode(double x, double y, double z){

    string four_direction_status = "";

    if(isObstacle(octree1->search(x+resolution, y, z))){   //for the direction 0
        four_direction_status+="0";
    }
    if(isObstacle(octree1->search(x, y+resolution, z))){   //for the direction 1
        four_direction_status+="1";
    }
    if(isObstacle(octree1->search(x-resolution, y, z))){   //For the direction 2
        four_direction_status+="2";
    }
    if(isObstacle(octree1->search(x, y-resolution, z))){   //for the direction 3
        four_direction_status+="3";
    }
    return four_direction_status;

}

char getNextSingleCode(string four_directions, char last_character){
    char output = 'n';
    string sequence = lut[four_directions];
    if(last_character == 'n'){
        output = sequence[0];
    }else if(last_character == '0'){
        output = sequence[1];
    }else if(last_character == '1'){
        output = sequence[2];
    }else if(last_character == '2'){
        output = sequence[3];
    }else{
        output = sequence[4];
    }
    return output;
}

double calculate_next_X(char code, double x){
    double output = x;
    if(code == '0'){
        output +=resolution;
    }else if(code == '2'){
        output -= resolution;
    }
    return output;
}

double calculate_next_Y(char code, double y){
    double output = y;
    if(code == '1'){
        output +=resolution;
    }else if(code == '3'){
        output -= resolution;
    }
    return output;
}

double calculate_next_Z(char code, double z){ //this is to implement later
    return z;
}

bool isStartingPoint(string four_direction_code){
    bool output = false;
    if(four_direction_code =="0"){
        output = true;
    } else if(four_direction_code == "1"){
        output = true;
    }else if(four_direction_code == "01"){
        output = true;
    }
    return output;
}

string makeStartPointInvariant(string raw_chaincode){
    int size = raw_chaincode.length();
    string minString = raw_chaincode;
    for(int i=1; i<size; i++){
        string temp = raw_chaincode.substr(i, size)+raw_chaincode.substr(0,i);
        if(temp<minString){
            minString = temp;
        }
    }
    return minString;

}

string makeRotationInvariant(string spi_chaincode){
    string output = "";
    int size = spi_chaincode.length();
    for(int i=0; i<size; i++){
        int temp;
        if(i==0) {
            temp = (int)spi_chaincode[0] - (int)spi_chaincode[size-1];
        }else{
            temp = (int) spi_chaincode[i] - (int) spi_chaincode[i-1];
        }
        if(temp<0){
            temp+=4;
        }
        output+= lexical_cast<string>(temp);
    }
    return output;
}

string makeRSTinvariant(string raw_chaincode){
    string output;
    output = makeStartPointInvariant(raw_chaincode);
    output = makeRotationInvariant(output);
    return output;
}

int main(int argc, char** argv){

    lut.insert(std::pair<string, string>("0", "0nn0n"));
    lut.insert(std::pair<string, string>("01", "0nn10"));
    lut.insert(std::pair<string, string>("012", "n0n12"));
    lut.insert(std::pair<string, string>("013", "nn013"));
    lut.insert(std::pair<string, string>("0123", "n3012"));
    lut.insert(std::pair<string, string>("02", "n0n2n"));
    lut.insert(std::pair<string, string>("023", "n302n"));
    lut.insert(std::pair<string, string>("03", "nn03n"));
    lut.insert(std::pair<string, string>("1", "1nnn1"));
    lut.insert(std::pair<string, string>("12", "n1nn2"));
    lut.insert(std::pair<string, string>("123", "n31n2"));
    lut.insert(std::pair<string, string>("13", "nn1n3"));
    lut.insert(std::pair<string, string>("2", "n2nnn"));
    lut.insert(std::pair<string, string>("23", "n32nn"));
    lut.insert(std::pair<string, string>("3", "nn3nn"));

    octree1->expand();

    double x_min, y_min, z_min;                 //minimum boundaries of the tree expansion
    octree1->getMetricMin(x_min, y_min, z_min);

    double x_max, y_max, z_max;                 //maximum boundaries of the tree expansion
    octree1->getMetricMax(x_max, y_max, z_max);

    map<string, bool> cornerNodes;

    string fileName="octree_data_analyzer.txt";
    ofstream offile;
    offile.open(fileName.c_str(), ios::app);
    if(offile.is_open()) {

        for (double x = x_min + error; x<x_max; x +=resolution) {
            for (double y = y_min + error; y < y_max; y += resolution) {
                double z = 0+ error;

                OcTreeNode *node_start = octree1->search(x, y, z);
                if (isObstacle(node_start)) {

                    string four = getFourDirectionCode(x, y, z);
                    if (isStartingPoint(four)) {

                        string nodeId = lexical_cast<string>(node_start);
                        if (!cornerNodes.count(nodeId)) {
                            cornerNodes.insert(std::pair<string, bool>(nodeId, true));
                            string chain_code = "";
                            char nextDirection = getNextSingleCode(four, 'n');
                            chain_code += nextDirection;

                            offile << x << "\t" << y << "\t" << z << "\t"; //if there's no chain - this line will be just this.

                            double x_next = calculate_next_X(nextDirection, x);
                            double y_next = calculate_next_Y(nextDirection, y);
                            double z_next = calculate_next_Z(nextDirection, z);
                            while ((octree1->search(x_next, y_next, z_next)) != node_start) {
                                four = getFourDirectionCode(x_next, y_next, z_next);
                                nextDirection = getNextSingleCode(four, nextDirection);
                                chain_code += nextDirection;
                                /*offile<<x_next << "\t" << y_next << "\t" << z_next << "\t"
                                       << nextDirection
                                       << endl; */
                                x_next = calculate_next_X(nextDirection, x_next);
                                y_next = calculate_next_Y(nextDirection, y_next);
                                z_next = calculate_next_Z(nextDirection, z_next);
                            }
                            //cout<<chain_code<<"\t";
                            //cout<<chain_code<<"\t"<<makeRSTinvariant(chain_code)<<endl;
                            offile<<chain_code<<endl;
                            //offile<<makeRSTinvariant(chain_code)<<endl;
                            //offile<<endl<<endl;
                        }else continue;
                    }
                }
            }
        }
    }
    cout<<"Chain codes successfully generated!"<<endl<<"Check the file octree_data_analyzer.txt"<<endl;
    offile.close();
    delete octree1; //clear the variable
}



