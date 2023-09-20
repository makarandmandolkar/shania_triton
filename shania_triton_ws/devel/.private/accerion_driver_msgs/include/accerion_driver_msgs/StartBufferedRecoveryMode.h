// Generated by gencpp from file accerion_driver_msgs/StartBufferedRecoveryMode.msg
// DO NOT EDIT!


#ifndef ACCERION_DRIVER_MSGS_MESSAGE_STARTBUFFEREDRECOVERYMODE_H
#define ACCERION_DRIVER_MSGS_MESSAGE_STARTBUFFEREDRECOVERYMODE_H

#include <ros/service_traits.h>


#include <accerion_driver_msgs/StartBufferedRecoveryModeRequest.h>
#include <accerion_driver_msgs/StartBufferedRecoveryModeResponse.h>


namespace accerion_driver_msgs
{

struct StartBufferedRecoveryMode
{

typedef StartBufferedRecoveryModeRequest Request;
typedef StartBufferedRecoveryModeResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct StartBufferedRecoveryMode
} // namespace accerion_driver_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::accerion_driver_msgs::StartBufferedRecoveryMode > {
  static const char* value()
  {
    return "b55e14589ad6c01276c8060ce8703764";
  }

  static const char* value(const ::accerion_driver_msgs::StartBufferedRecoveryMode&) { return value(); }
};

template<>
struct DataType< ::accerion_driver_msgs::StartBufferedRecoveryMode > {
  static const char* value()
  {
    return "accerion_driver_msgs/StartBufferedRecoveryMode";
  }

  static const char* value(const ::accerion_driver_msgs::StartBufferedRecoveryMode&) { return value(); }
};


// service_traits::MD5Sum< ::accerion_driver_msgs::StartBufferedRecoveryModeRequest> should match
// service_traits::MD5Sum< ::accerion_driver_msgs::StartBufferedRecoveryMode >
template<>
struct MD5Sum< ::accerion_driver_msgs::StartBufferedRecoveryModeRequest>
{
  static const char* value()
  {
    return MD5Sum< ::accerion_driver_msgs::StartBufferedRecoveryMode >::value();
  }
  static const char* value(const ::accerion_driver_msgs::StartBufferedRecoveryModeRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::accerion_driver_msgs::StartBufferedRecoveryModeRequest> should match
// service_traits::DataType< ::accerion_driver_msgs::StartBufferedRecoveryMode >
template<>
struct DataType< ::accerion_driver_msgs::StartBufferedRecoveryModeRequest>
{
  static const char* value()
  {
    return DataType< ::accerion_driver_msgs::StartBufferedRecoveryMode >::value();
  }
  static const char* value(const ::accerion_driver_msgs::StartBufferedRecoveryModeRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::accerion_driver_msgs::StartBufferedRecoveryModeResponse> should match
// service_traits::MD5Sum< ::accerion_driver_msgs::StartBufferedRecoveryMode >
template<>
struct MD5Sum< ::accerion_driver_msgs::StartBufferedRecoveryModeResponse>
{
  static const char* value()
  {
    return MD5Sum< ::accerion_driver_msgs::StartBufferedRecoveryMode >::value();
  }
  static const char* value(const ::accerion_driver_msgs::StartBufferedRecoveryModeResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::accerion_driver_msgs::StartBufferedRecoveryModeResponse> should match
// service_traits::DataType< ::accerion_driver_msgs::StartBufferedRecoveryMode >
template<>
struct DataType< ::accerion_driver_msgs::StartBufferedRecoveryModeResponse>
{
  static const char* value()
  {
    return DataType< ::accerion_driver_msgs::StartBufferedRecoveryMode >::value();
  }
  static const char* value(const ::accerion_driver_msgs::StartBufferedRecoveryModeResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ACCERION_DRIVER_MSGS_MESSAGE_STARTBUFFEREDRECOVERYMODE_H
