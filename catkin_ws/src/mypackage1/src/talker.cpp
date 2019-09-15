#include "ros/ros.h"
#include "mypackage1/Num.h"
#include <sstream>
#include "mypackage1/check.h"
#include <string.h>




void checkCallback(const mypackage1::check::ConstPtr& msg)
{
       const char* str=msg->state.c_str();
       char ss[100];
       //printf("111111\n");
       sscanf(str,"%s",ss);
       if(strcmp(ss,"stop")==0)
       {printf("state=%s,node is killed\n",msg->state.c_str());
       ros::shutdown();
       }

}

int main(int argc, char **argv)
{
	  ros::init(argc, argv, "talker");

	  ros::NodeHandle n;
          ros::Subscriber sub = n.subscribe("checktopic", 100, checkCallback);   
	  ros::Publisher chatter_pub = n.advertise<mypackage1::Num>("chatter", 1000);//向话题chatter发布消息，返回一个ros/publisher对象可以使用chatteer_pub.publish()函数进行消息发布，发送的消息是string类型
                  
          ros::Rate loop_rate(10);

	  int count = 0;
	  while (ros::ok())
          {	   
           mypackage1::Num msg;//定义一个std_msgs/string类型的数据
	   std::stringstream ss;
           std::stringstream qq;
           ss << "hello world " << count;
           qq << "i am robot 1 " << count;
	   msg.first_name = ss.str();//字符串流ss关联msg.data
           msg.last_name = qq.str();
	   printf("%s\n", msg.first_name.c_str());//等效于printf语句 ROS_INFO("%s", msg.data.c_str());
           printf("%s\n", msg.last_name.c_str());//等效于printf语句
           chatter_pub.publish(msg);
           ros::spinOnce(); 
												   
           loop_rate.sleep();
	   ++count;
           
	  }

	 return 0;
}
