// Generated by gencpp from file accerion_driver_msgs/RemoveAreaRequest.msg
// DO NOT EDIT!


#ifndef ACCERION_DRIVER_MSGS_MESSAGE_REMOVEAREAREQUEST_H
#define ACCERION_DRIVER_MSGS_MESSAGE_REMOVEAREAREQUEST_H


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
struct RemoveAreaRequest_
{
  typedef RemoveAreaRequest_<ContainerAllocator> Type;

  RemoveAreaRequest_()
    : areaIDToBeRemoved(0)
    , removeAll(false)  {
    }
  RemoveAreaRequest_(const ContainerAllocator& _alloc)
    : areaIDToBeRemoved(0)
    , removeAll(false)  {
  (void)_alloc;
    }



   typedef uint16_t _areaIDToBeRemoved_type;
  _areaIDToBeRemoved_type areaIDToBeRemoved;

   typedef uint8_t _removeAll_type;
  _removeAll_type removeAll;





  typedef boost::shared_ptr< ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator> const> ConstPtr;

}; // struct RemoveAreaRequest_

typedef ::accerion_driver_msgs::RemoveAreaRequest_<std::allocator<void> > RemoveAreaRequest;

typedef boost::shared_ptr< ::accerion_driver_msgs::RemoveAreaRequest > RemoveAreaRequestPtr;
typedef boost::shared_ptr< ::accerion_driver_msgs::RemoveAreaRequest const> RemoveAreaRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator1> & lhs, const ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator2> & rhs)
{
  return lhs.areaIDToBeRemoved == rhs.areaIDToBeRemoved &&
    lhs.removeAll == rhs.removeAll;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator1> & lhs, const ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace accerion_driver_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "414f5eb7fc7ec2360743cccfb20c1dbf";
  }

  static const char* value(const ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x414f5eb7fc7ec236ULL;
  static const uint64_t static_value2 = 0x0743cccfb20c1dbfULL;
};

template<class ContainerAllocator>
struct DataType< ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "accerion_driver_msgs/RemoveAreaRequest";
  }

  static const char* value(const ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "uint16 areaIDToBeRemoved      # Area ID to be removed\n"
"bool removeAll                # Remove all areas\n"
;
  }

  static const char* value(const ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.areaIDToBeRemoved);
      stream.next(m.removeAll);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct RemoveAreaRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::accerion_driver_msgs::RemoveAreaRequest_<ContainerAllocator>& v)
  {
    s << indent << "areaIDToBeRemoved: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.areaIDToBeRemoved);
    s << indent << "removeAll: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.removeAll);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACCERION_DRIVER_MSGS_MESSAGE_REMOVEAREAREQUEST_H
