// Generated by gencpp from file rt_mission_msgs/mission_cancel_service.msg
// DO NOT EDIT!


#ifndef RT_MISSION_MSGS_MESSAGE_MISSION_CANCEL_SERVICE_H
#define RT_MISSION_MSGS_MESSAGE_MISSION_CANCEL_SERVICE_H

#include <ros/service_traits.h>


#include <rt_mission_msgs/mission_cancel_serviceRequest.h>
#include <rt_mission_msgs/mission_cancel_serviceResponse.h>


namespace rt_mission_msgs
{

struct mission_cancel_service
{

typedef mission_cancel_serviceRequest Request;
typedef mission_cancel_serviceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct mission_cancel_service
} // namespace rt_mission_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rt_mission_msgs::mission_cancel_service > {
  static const char* value()
  {
    return "eb13ac1f1354ccecb7941ee8fa2192e8";
  }

  static const char* value(const ::rt_mission_msgs::mission_cancel_service&) { return value(); }
};

template<>
struct DataType< ::rt_mission_msgs::mission_cancel_service > {
  static const char* value()
  {
    return "rt_mission_msgs/mission_cancel_service";
  }

  static const char* value(const ::rt_mission_msgs::mission_cancel_service&) { return value(); }
};


// service_traits::MD5Sum< ::rt_mission_msgs::mission_cancel_serviceRequest> should match
// service_traits::MD5Sum< ::rt_mission_msgs::mission_cancel_service >
template<>
struct MD5Sum< ::rt_mission_msgs::mission_cancel_serviceRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rt_mission_msgs::mission_cancel_service >::value();
  }
  static const char* value(const ::rt_mission_msgs::mission_cancel_serviceRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rt_mission_msgs::mission_cancel_serviceRequest> should match
// service_traits::DataType< ::rt_mission_msgs::mission_cancel_service >
template<>
struct DataType< ::rt_mission_msgs::mission_cancel_serviceRequest>
{
  static const char* value()
  {
    return DataType< ::rt_mission_msgs::mission_cancel_service >::value();
  }
  static const char* value(const ::rt_mission_msgs::mission_cancel_serviceRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rt_mission_msgs::mission_cancel_serviceResponse> should match
// service_traits::MD5Sum< ::rt_mission_msgs::mission_cancel_service >
template<>
struct MD5Sum< ::rt_mission_msgs::mission_cancel_serviceResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rt_mission_msgs::mission_cancel_service >::value();
  }
  static const char* value(const ::rt_mission_msgs::mission_cancel_serviceResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rt_mission_msgs::mission_cancel_serviceResponse> should match
// service_traits::DataType< ::rt_mission_msgs::mission_cancel_service >
template<>
struct DataType< ::rt_mission_msgs::mission_cancel_serviceResponse>
{
  static const char* value()
  {
    return DataType< ::rt_mission_msgs::mission_cancel_service >::value();
  }
  static const char* value(const ::rt_mission_msgs::mission_cancel_serviceResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RT_MISSION_MSGS_MESSAGE_MISSION_CANCEL_SERVICE_H
