// Generated by gencpp from file accerion_driver_msgs/LogsRequest.msg
// DO NOT EDIT!


#ifndef ACCERION_DRIVER_MSGS_MESSAGE_LOGSREQUEST_H
#define ACCERION_DRIVER_MSGS_MESSAGE_LOGSREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace accerion_driver_msgs
{
template <class ContainerAllocator>
struct LogsRequest_
{
  typedef LogsRequest_<ContainerAllocator> Type;

  LogsRequest_()
    : path()
    , backupLogs(false)  {
    }
  LogsRequest_(const ContainerAllocator& _alloc)
    : path(_alloc)
    , backupLogs(false)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _path_type;
  _path_type path;

   typedef uint8_t _backupLogs_type;
  _backupLogs_type backupLogs;





  typedef boost::shared_ptr< ::accerion_driver_msgs::LogsRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::accerion_driver_msgs::LogsRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LogsRequest_

typedef ::accerion_driver_msgs::LogsRequest_<std::allocator<void> > LogsRequest;

typedef boost::shared_ptr< ::accerion_driver_msgs::LogsRequest > LogsRequestPtr;
typedef boost::shared_ptr< ::accerion_driver_msgs::LogsRequest const> LogsRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::accerion_driver_msgs::LogsRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::accerion_driver_msgs::LogsRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::accerion_driver_msgs::LogsRequest_<ContainerAllocator1> & lhs, const ::accerion_driver_msgs::LogsRequest_<ContainerAllocator2> & rhs)
{
  return lhs.path == rhs.path &&
    lhs.backupLogs == rhs.backupLogs;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::accerion_driver_msgs::LogsRequest_<ContainerAllocator1> & lhs, const ::accerion_driver_msgs::LogsRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace accerion_driver_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::accerion_driver_msgs::LogsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::accerion_driver_msgs::LogsRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::accerion_driver_msgs::LogsRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::accerion_driver_msgs::LogsRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::accerion_driver_msgs::LogsRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::accerion_driver_msgs::LogsRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::accerion_driver_msgs::LogsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d78ee6479e24c390d3e75c597dcc28f9";
  }

  static const char* value(const ::accerion_driver_msgs::LogsRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd78ee6479e24c390ULL;
  static const uint64_t static_value2 = 0xd3e75c597dcc28f9ULL;
};

template<class ContainerAllocator>
struct DataType< ::accerion_driver_msgs::LogsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "accerion_driver_msgs/LogsRequest";
  }

  static const char* value(const ::accerion_driver_msgs::LogsRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::accerion_driver_msgs::LogsRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string path                 # Path where the logs should be stored\n"
"bool backupLogs             # boolean, set to true if backup logs are to be retrieved.\n"
;
  }

  static const char* value(const ::accerion_driver_msgs::LogsRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::accerion_driver_msgs::LogsRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path);
      stream.next(m.backupLogs);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LogsRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::accerion_driver_msgs::LogsRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::accerion_driver_msgs::LogsRequest_<ContainerAllocator>& v)
  {
    s << indent << "path: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.path);
    s << indent << "backupLogs: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.backupLogs);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACCERION_DRIVER_MSGS_MESSAGE_LOGSREQUEST_H
