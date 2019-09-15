#include "ros/ros.h"
#include "practice/send.h"
#include "std_msgs/String.h"
#include <sstream>
//#include "mypackage1/check.h"
#include <string.h>




/*void checkCallback(const practice::send::ConstPtr& msg)
{
       const char* str=msg->state.c_str();
       char ss[100];
       //printf("111111\n");
       sscanf(str,"%s",ss);
       if(strcmp(ss,"stop")==0)
       {printf("state=%s,node is killed\n",msg->state.c_str());
       ros::shutdown();
       }

}*/

int main(int argc, char **argv)
{
	  ros::init(argc, argv, "multithreading_talker");
	  ros::NodeHandle n;
          //ros::Subscriber sub = n.subscribe("checktopic", 100, checkCallback);   
	  ros::Publisher pub1 = n.advertise<practice::send>("chatter1", 1000);
          ros::Publisher pub2 = n.advertise<practice::send>("chatter2", 1000);
                  
          ros::Rate loop_rate(10);

	  int count = 0;
	  while (ros::ok())
          {	   
           practice::send msg1;
           practice::send msg2;
	   std::stringstream ss;
           std::stringstream qq;
           ss << "hello world " << count;
           qq << "i am robot 1 " << count;
	   msg1.message1 = ss.str();//字符串流ss关联msg.data
           msg2.message1 = qq.str();
	   printf("%s\n", msg1.message1.c_str());//等效于printf语句 ROS_INFO("%s", msg.data.c_str());
           printf("%s\n", msg2.message1.c_str());//等效于printf语句
           pub1.publish(msg1);
           pub2.publish(msg2);
           ros::spinOnce(); 
												   
           loop_rate.sleep();
	   ++count;
           
	  }

	 return 0;
}
