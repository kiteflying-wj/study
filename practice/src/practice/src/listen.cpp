#include "ros/ros.h"
#include "std_msgs/String.h"
#include "practice/send.h"
//#include "mypackage1/check.h"
#include  <cstdlib>
#include  <cstdio>
#include  <sstream>
#include <boost/thread.hpp>//多线程处理
class SubAndPub
{
public:
	ros::NodeHandle n;
	SubAndPub()
	{
		check_pub = n.advertise<practice::send>("checktopic", 1);
                sub2 = n.subscribe("chatter2", 1, &SubAndPub::chatter2Callback, this);
		sub1 = n.subscribe("chatter1", 1, &SubAndPub::chatter1Callback, this);
                
	}


void chatter1Callback(const practice::send::ConstPtr& msg)
{        
       
       const char* str=msg->message1.c_str();
       ROS_INFO("I heard: [%s]", str);
       ros::Rate loop_rate(2);//设置接收频率2次/秒
       loop_rate.sleep();

       /* int ab;
        char st[100],sw[100];
        const char* str=msg->first_name.c_str();
	printf("111111\n");
        mypackage1::check message;     
        sscanf(str,"%s %s%d",st,sw,&ab);
        if(ab<200)
	{
          message.state="work";         
          check_pub.publish(message);                 
          ROS_INFO("I heard: [%s],state=%s", msg->first_name.c_str(),message.state.c_str());
          ROS_INFO("I also heard: [%s]", msg->last_name.c_str());
	}
        else
        { 
             message.state="stop";
             check_pub.publish(message);
             ROS_INFO("stop %d",ab);  
             ros::shutdown();
             
	}*/
}
void chatter2Callback(const practice::send::ConstPtr& msg)
{
        
       const char* str=msg->message1.c_str();
       ROS_INFO("I also heard: [%s]", str);
       ros::Rate loop_rate(6);//设置接收频率6次/秒，接收频率要小于等于发送频率，不然接收频率最多达到发送频率的效果
       loop_rate.sleep();


}
private:
	ros::Subscriber sub1;
        ros::Subscriber sub2;
	ros::Publisher check_pub;
};


int main(int argc, char **argv)
{
	  ros::init(argc, argv, "multithreading_listener");         
	  SubAndPub SAP;
 	  ros::AsyncSpinner spinner(2);//设置为双线程
	  spinner.start();
          ros::waitForShutdown();
	  return 0;
}
