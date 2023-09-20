// Generated by gencpp from file camera_utils/LatestImage.msg
// DO NOT EDIT!


#ifndef CAMERA_UTILS_MESSAGE_LATESTIMAGE_H
#define CAMERA_UTILS_MESSAGE_LATESTIMAGE_H

#include <ros/service_traits.h>


#include <camera_utils/LatestImageRequest.h>
#include <camera_utils/LatestImageResponse.h>


namespace camera_utils
{

struct LatestImage
{

typedef LatestImageRequest Request;
typedef LatestImageResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct LatestImage
} // namespace camera_utils


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::camera_utils::LatestImage > {
  static const char* value()
  {
    return "8b766023585bea29bcbe2ed10ab865f2";
  }

  static const char* value(const ::camera_utils::LatestImage&) { return value(); }
};

template<>
struct DataType< ::camera_utils::LatestImage > {
  static const char* value()
  {
    return "camera_utils/LatestImage";
  }

  static const char* value(const ::camera_utils::LatestImage&) { return value(); }
};


// service_traits::MD5Sum< ::camera_utils::LatestImageRequest> should match
// service_traits::MD5Sum< ::camera_utils::LatestImage >
template<>
struct MD5Sum< ::camera_utils::LatestImageRequest>
{
  static const char* value()
  {
    return MD5Sum< ::camera_utils::LatestImage >::value();
  }
  static const char* value(const ::camera_utils::LatestImageRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::camera_utils::LatestImageRequest> should match
// service_traits::DataType< ::camera_utils::LatestImage >
template<>
struct DataType< ::camera_utils::LatestImageRequest>
{
  static const char* value()
  {
    return DataType< ::camera_utils::LatestImage >::value();
  }
  static const char* value(const ::camera_utils::LatestImageRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::camera_utils::LatestImageResponse> should match
// service_traits::MD5Sum< ::camera_utils::LatestImage >
template<>
struct MD5Sum< ::camera_utils::LatestImageResponse>
{
  static const char* value()
  {
    return MD5Sum< ::camera_utils::LatestImage >::value();
  }
  static const char* value(const ::camera_utils::LatestImageResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::camera_utils::LatestImageResponse> should match
// service_traits::DataType< ::camera_utils::LatestImage >
template<>
struct DataType< ::camera_utils::LatestImageResponse>
{
  static const char* value()
  {
    return DataType< ::camera_utils::LatestImage >::value();
  }
  static const char* value(const ::camera_utils::LatestImageResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // CAMERA_UTILS_MESSAGE_LATESTIMAGE_H
