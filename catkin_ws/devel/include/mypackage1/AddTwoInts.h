// Generated by gencpp from file mypackage1/AddTwoInts.msg
// DO NOT EDIT!


#ifndef MYPACKAGE1_MESSAGE_ADDTWOINTS_H
#define MYPACKAGE1_MESSAGE_ADDTWOINTS_H

#include <ros/service_traits.h>


#include <mypackage1/AddTwoIntsRequest.h>
#include <mypackage1/AddTwoIntsResponse.h>


namespace mypackage1
{

struct AddTwoInts
{

typedef AddTwoIntsRequest Request;
typedef AddTwoIntsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct AddTwoInts
} // namespace mypackage1


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::mypackage1::AddTwoInts > {
  static const char* value()
  {
    return "6a2e34150c00229791cc89ff309fff21";
  }

  static const char* value(const ::mypackage1::AddTwoInts&) { return value(); }
};

template<>
struct DataType< ::mypackage1::AddTwoInts > {
  static const char* value()
  {
    return "mypackage1/AddTwoInts";
  }

  static const char* value(const ::mypackage1::AddTwoInts&) { return value(); }
};


// service_traits::MD5Sum< ::mypackage1::AddTwoIntsRequest> should match 
// service_traits::MD5Sum< ::mypackage1::AddTwoInts > 
template<>
struct MD5Sum< ::mypackage1::AddTwoIntsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::mypackage1::AddTwoInts >::value();
  }
  static const char* value(const ::mypackage1::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::mypackage1::AddTwoIntsRequest> should match 
// service_traits::DataType< ::mypackage1::AddTwoInts > 
template<>
struct DataType< ::mypackage1::AddTwoIntsRequest>
{
  static const char* value()
  {
    return DataType< ::mypackage1::AddTwoInts >::value();
  }
  static const char* value(const ::mypackage1::AddTwoIntsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::mypackage1::AddTwoIntsResponse> should match 
// service_traits::MD5Sum< ::mypackage1::AddTwoInts > 
template<>
struct MD5Sum< ::mypackage1::AddTwoIntsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::mypackage1::AddTwoInts >::value();
  }
  static const char* value(const ::mypackage1::AddTwoIntsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::mypackage1::AddTwoIntsResponse> should match 
// service_traits::DataType< ::mypackage1::AddTwoInts > 
template<>
struct DataType< ::mypackage1::AddTwoIntsResponse>
{
  static const char* value()
  {
    return DataType< ::mypackage1::AddTwoInts >::value();
  }
  static const char* value(const ::mypackage1::AddTwoIntsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // MYPACKAGE1_MESSAGE_ADDTWOINTS_H
