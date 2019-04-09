#include <vector>
//#include <c-string>
#include <string>
#include <sstream>
#include <iostream>

int main()
{
std::string str("G X122 C 25 ;This X24    is comment");
std::string buf;                 // Have a buffer string
bool flag = true;
int i, n;
while (flag) {
    //std::cout << flag << std::endl;
    /*
    if (str[0] == 'M' or str[0] == 'G'){
        std::cout << flag << std::endl;
        bool flag2 = true;
        while (ss >> buf){
            //std::cout << "num " << buf[0] << buf[1] <<  " " << (isalpha(buf[0])!=0) << " " << isdigit(buf[1]) << " " << flag2 <<  std::endl;
            if (isalpha(buf[0])!=0 and isdigit(buf[1]) and flag2){
                std::cout << "nu2m" << std::endl;
                std::cout << buf << std::endl;
                int n = buf.length();
                std::string num; int i = 1;
                while (isdigit(buf[i]) and i<n) num += buf[i++];
                float number;
                std::stringstream ss2float;
                ss2float << num;
                ss2float >> number;
                std::cout << num << std::endl;
            }
            else {
                flag2 = false;
                str = "M321 G21 X32";  
                flag = true;
                std::cout << flag << std::endl;
            }
        }
        flag = false;
        std::cout << "ff" << flag << std::endl;
    }
    else {
        str = "M321 G21 X32";  
        flag = true;
        //std::cout << flag << std::endl;
    }
    */
    if ((str[0] == 'M' or str[0] == 'G') and isdigit(str[1])){
        //std::cout << flag << std::endl;
        bool flag2 = true;
        i = 1;
        n = str.length();
        while(isdigit(str[i]) and i<n) buf += str[i++];
        std::cout << "string: " << str << std::endl;
    }
    else {
        str = "M321 G21 X32";  
        flag = true;
    }
}
return 0;
}