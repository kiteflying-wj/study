    #include "ros/ros.h"
    #include "mypackage1/AddTwoInts.h"
    
   bool add(mypackage1::AddTwoInts::Request  &req,
            mypackage1::AddTwoInts::Response &res)//这个函数提供两个int值求和的服务，int值从request里面获取，而返回数据装入response内，这些数据类型都定义在srv文件内部，函数返回一个boolean值。
   {  int i=0;
      long long int upper,lower;
      if(req.a<req.b)
        { upper=req.b;
          lower=req.a;}
      else
        { upper=req.a;
          lower=req.b;}
      for (i=lower;i<=upper;i++)
      {res.sum+=i;}
      
      //res.sum = req.a + req.b;
      ROS_INFO("request: x=%ld, y=%ld", (long int)req.a, (long int)req.b);
      ROS_INFO("sending back response: [%lld]", (long long int)res.sum);
     return true;
   }//现在，两个int值已经相加，并存入了response。然后一些关于request和response的信息被记录下来。最后，service完成计算后返回true值。
  
  int main(int argc, char **argv)
   {
   ros::init(argc, argv, "add_two_ints_server");
   ros::NodeHandle n;
  
   ros::ServiceServer service = n.advertiseService("add_two_ints", add);//这里，service已经建立起来，并在ROS内发布出来。
   ROS_INFO("Ready to add two ints.");
   ros::spin();
 
  return 0;
  }
