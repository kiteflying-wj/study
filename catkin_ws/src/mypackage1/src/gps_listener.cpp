#include <ros/ros.h>
#include <mypackage1/gps.h>
#include <std_msgs/Float32.h>

void gpsCallback(const mypackage1::gps::ConstPtr &msg)
{
   float distance;
distance=sqrt(pow(msg->x,2)+pow(msg->y,2));
ROS_INFO("Listener:Distance to origin=%f,state=%s",distance, msg->state.c_str());
}



int main(int argc,char **argv)
{
   ros::init(argc,argv,"gps_listener");
   ros::NodeHandle n;
  

ros::Subscriber sub=n.subscribe("gps_info",1,gpsCallback);

ros::spin();
  return 0;
}
/*#include "ros/ros.h"
#include "std_msgs/String.h"
#include "mypackage1/gps.h"
#include  <cstdlib>
#include  <cstdio>
//#include  <sstream>
void gpsCallback(const mypackage1::gps::ConstPtr& msg)//这是一个回调函数，当接收到 chatter 话题的时候就会被调用。消息是以 boost shared_ptr 指针的形式传输，这就意味着你可以存储它而又不需要复制数据。 
{        
       	 ROS_INFO("I heard: [%s]", msg->state.c_str());
        // ROS_INFO("I also heard: [%s]", msg->last_name.c_str()); 

          //int ab;
          //char str[100];
          //char *ss;
          //ss=msg->first_name;
          //sscanf(ss,"%[a-z]%d",str,&ab);
         // if(ab!=500)
	  //{ROS_INFO("I heard: [%s]", msg->first_name.c_str());
        //  ROS_INFO("I also heard: [%s]", msg->last_name.c_str());}
        //  else
         // { ROS_INFO("stop");}
         
}

int main(int argc, char **argv)
{
	  ros::init(argc, argv, "gps_listener");

	    ros::NodeHandle n;

		  ros::Subscriber sub = n.subscribe("gps_info", 1000, gpsCallback);//告诉 master 我们要订阅 chatter 话题上的消息。当有消息发布到这个话题时，ROS 就会调用 chatterCallback() 函数。第二个参数是队列大小，以防我们处理消息的速度不够快，当缓存达到 1000 条消息后，再有新的消息到来就将开始丢弃先前接收的消息。NodeHandle::subscribe() 返回 ros::Subscriber 对象,你必须让它处于活动状态直到你不再想订阅该消息。当这个对象销毁时，它将自动退订 chatter 话题的消息.有各种不同的 NodeHandle::subscribe() 函数，允许你指定类的成员函数，甚至是 Boost.Function 对象可以调用的任何数据类型。roscpp overview 提供了更为详尽的信息。 
		    
		    ros::spin();//ros::spin() 进入自循环，可以尽可能快的调用消息回调函数。如果没有消息到达，它不会占用很多 CPU，所以不用担心。一旦 ros::ok() 返回 false，ros::spin() 就会立刻跳出自循环。这有可能是 ros::shutdown() 被调用，或者是用户按下了 Ctrl-C，使得 master 告诉节点要终止运行。也有可能是节点被人为关闭的。 

			  return 0;
}*/
