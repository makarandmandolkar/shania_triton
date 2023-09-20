// Generated by gencpp from file accerion_driver_msgs/Recordings.msg
// DO NOT EDIT!


#ifndef ACCERION_DRIVER_MSGS_MESSAGE_RECORDINGS_H
#define ACCERION_DRIVER_MSGS_MESSAGE_RECORDINGS_H

#include <ros/service_traits.h>


#include <accerion_driver_msgs/RecordingsRequest.h>
#include <accerion_driver_msgs/RecordingsResponse.h>


namespace accerion_driver_msgs
{

struct Recordings
{

typedef RecordingsRequest Request;
typedef RecordingsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct Recordings
} // namespace accerion_driver_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::accerion_driver_msgs::Recordings > {
  static const char* value()
  {
    return "a50241c729b90d3d361ca09193e877ca";
  }

  static const char* value(const ::accerion_driver_msgs::Recordings&) { return value(); }
};

template<>
struct DataType< ::accerion_driver_msgs::Recordings > {
  static const char* value()
  {
    return "accerion_driver_msgs/Recordings";
  }

  static const char* value(const ::accerion_driver_msgs::Recordings&) { return value(); }
};


// service_traits::MD5Sum< ::accerion_driver_msgs::RecordingsRequest> should match
// service_traits::MD5Sum< ::accerion_driver_msgs::Recordings >
template<>
struct MD5Sum< ::accerion_driver_msgs::RecordingsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::accerion_driver_msgs::Recordings >::value();
  }
  static const char* value(const ::accerion_driver_msgs::RecordingsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::accerion_driver_msgs::RecordingsRequest> should match
// service_traits::DataType< ::accerion_driver_msgs::Recordings >
template<>
struct DataType< ::accerion_driver_msgs::RecordingsRequest>
{
  static const char* value()
  {
    return DataType< ::accerion_driver_msgs::Recordings >::value();
  }
  static const char* value(const ::accerion_driver_msgs::RecordingsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::accerion_driver_msgs::RecordingsResponse> should match
// service_traits::MD5Sum< ::accerion_driver_msgs::Recordings >
template<>
struct MD5Sum< ::accerion_driver_msgs::RecordingsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::accerion_driver_msgs::Recordings >::value();
  }
  static const char* value(const ::accerion_driver_msgs::RecordingsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::accerion_driver_msgs::RecordingsResponse> should match
// service_traits::DataType< ::accerion_driver_msgs::Recordings >
template<>
struct DataType< ::accerion_driver_msgs::RecordingsResponse>
{
  static const char* value()
  {
    return DataType< ::accerion_driver_msgs::Recordings >::value();
  }
  static const char* value(const ::accerion_driver_msgs::RecordingsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // ACCERION_DRIVER_MSGS_MESSAGE_RECORDINGS_H
