// Generated by gencpp from file monitor_utils/node_watchdog_serviceResponse.msg
// DO NOT EDIT!


#ifndef MONITOR_UTILS_MESSAGE_NODE_WATCHDOG_SERVICERESPONSE_H
#define MONITOR_UTILS_MESSAGE_NODE_WATCHDOG_SERVICERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace monitor_utils
{
template <class ContainerAllocator>
struct node_watchdog_serviceResponse_
{
  typedef node_watchdog_serviceResponse_<ContainerAllocator> Type;

  node_watchdog_serviceResponse_()
    : success(false)  {
    }
  node_watchdog_serviceResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator> const> ConstPtr;

}; // struct node_watchdog_serviceResponse_

typedef ::monitor_utils::node_watchdog_serviceResponse_<std::allocator<void> > node_watchdog_serviceResponse;

typedef boost::shared_ptr< ::monitor_utils::node_watchdog_serviceResponse > node_watchdog_serviceResponsePtr;
typedef boost::shared_ptr< ::monitor_utils::node_watchdog_serviceResponse const> node_watchdog_serviceResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator1> & lhs, const ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator1> & lhs, const ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace monitor_utils

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "monitor_utils/node_watchdog_serviceResponse";
  }

  static const char* value(const ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "#response\n"
"bool success\n"
;
  }

  static const char* value(const ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct node_watchdog_serviceResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::monitor_utils::node_watchdog_serviceResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // MONITOR_UTILS_MESSAGE_NODE_WATCHDOG_SERVICERESPONSE_H
