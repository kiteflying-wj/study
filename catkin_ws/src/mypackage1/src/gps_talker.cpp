#include <ros/ros.h>
#include <mypackage1/gps.h>



int main(int argc,char **argv)
{
   ros::init(argc,argv,"gps_talker");
   ros::NodeHandle n;
   mypackage1::gps  msg;
msg.x=1.0;
msg.y=1.0;
msg.state="working";
ros::Publisher pub=n.advertise<mypackage1::gps>("gps_info",1);
ros::Rate loop_rate(1.0);
while(ros::ok())
{msg.x=1.03*msg.x;
msg.y=1.03*msg.y;
ROS_INFO("talker:gps:x=%f,y=%f",msg.x,msg.y);

pub.publish(msg);
loop_rate.sleep();
}
  return 0;
}

