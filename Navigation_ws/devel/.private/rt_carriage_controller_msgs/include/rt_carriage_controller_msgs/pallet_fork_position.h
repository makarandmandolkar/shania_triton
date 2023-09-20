// Generated by gencpp from file rt_carriage_controller_msgs/pallet_fork_position.msg
// DO NOT EDIT!


#ifndef RT_CARRIAGE_CONTROLLER_MSGS_MESSAGE_PALLET_FORK_POSITION_H
#define RT_CARRIAGE_CONTROLLER_MSGS_MESSAGE_PALLET_FORK_POSITION_H

#include <ros/service_traits.h>


#include <rt_carriage_controller_msgs/pallet_fork_positionRequest.h>
#include <rt_carriage_controller_msgs/pallet_fork_positionResponse.h>


namespace rt_carriage_controller_msgs
{

struct pallet_fork_position
{

typedef pallet_fork_positionRequest Request;
typedef pallet_fork_positionResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct pallet_fork_position
} // namespace rt_carriage_controller_msgs


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::rt_carriage_controller_msgs::pallet_fork_position > {
  static const char* value()
  {
    return "28a2169120952b9ccef27ea2cdcbc4e5";
  }

  static const char* value(const ::rt_carriage_controller_msgs::pallet_fork_position&) { return value(); }
};

template<>
struct DataType< ::rt_carriage_controller_msgs::pallet_fork_position > {
  static const char* value()
  {
    return "rt_carriage_controller_msgs/pallet_fork_position";
  }

  static const char* value(const ::rt_carriage_controller_msgs::pallet_fork_position&) { return value(); }
};


// service_traits::MD5Sum< ::rt_carriage_controller_msgs::pallet_fork_positionRequest> should match
// service_traits::MD5Sum< ::rt_carriage_controller_msgs::pallet_fork_position >
template<>
struct MD5Sum< ::rt_carriage_controller_msgs::pallet_fork_positionRequest>
{
  static const char* value()
  {
    return MD5Sum< ::rt_carriage_controller_msgs::pallet_fork_position >::value();
  }
  static const char* value(const ::rt_carriage_controller_msgs::pallet_fork_positionRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::rt_carriage_controller_msgs::pallet_fork_positionRequest> should match
// service_traits::DataType< ::rt_carriage_controller_msgs::pallet_fork_position >
template<>
struct DataType< ::rt_carriage_controller_msgs::pallet_fork_positionRequest>
{
  static const char* value()
  {
    return DataType< ::rt_carriage_controller_msgs::pallet_fork_position >::value();
  }
  static const char* value(const ::rt_carriage_controller_msgs::pallet_fork_positionRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::rt_carriage_controller_msgs::pallet_fork_positionResponse> should match
// service_traits::MD5Sum< ::rt_carriage_controller_msgs::pallet_fork_position >
template<>
struct MD5Sum< ::rt_carriage_controller_msgs::pallet_fork_positionResponse>
{
  static const char* value()
  {
    return MD5Sum< ::rt_carriage_controller_msgs::pallet_fork_position >::value();
  }
  static const char* value(const ::rt_carriage_controller_msgs::pallet_fork_positionResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::rt_carriage_controller_msgs::pallet_fork_positionResponse> should match
// service_traits::DataType< ::rt_carriage_controller_msgs::pallet_fork_position >
template<>
struct DataType< ::rt_carriage_controller_msgs::pallet_fork_positionResponse>
{
  static const char* value()
  {
    return DataType< ::rt_carriage_controller_msgs::pallet_fork_position >::value();
  }
  static const char* value(const ::rt_carriage_controller_msgs::pallet_fork_positionResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // RT_CARRIAGE_CONTROLLER_MSGS_MESSAGE_PALLET_FORK_POSITION_H
