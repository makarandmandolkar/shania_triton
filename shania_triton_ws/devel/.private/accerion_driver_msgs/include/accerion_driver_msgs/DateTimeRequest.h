// Generated by gencpp from file accerion_driver_msgs/DateTimeRequest.msg
// DO NOT EDIT!


#ifndef ACCERION_DRIVER_MSGS_MESSAGE_DATETIMEREQUEST_H
#define ACCERION_DRIVER_MSGS_MESSAGE_DATETIMEREQUEST_H


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
struct DateTimeRequest_
{
  typedef DateTimeRequest_<ContainerAllocator> Type;

  DateTimeRequest_()
    : date()
    , time()  {
    }
  DateTimeRequest_(const ContainerAllocator& _alloc)
    : date(_alloc)
    , time(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _date_type;
  _date_type date;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _time_type;
  _time_type time;





  typedef boost::shared_ptr< ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DateTimeRequest_

typedef ::accerion_driver_msgs::DateTimeRequest_<std::allocator<void> > DateTimeRequest;

typedef boost::shared_ptr< ::accerion_driver_msgs::DateTimeRequest > DateTimeRequestPtr;
typedef boost::shared_ptr< ::accerion_driver_msgs::DateTimeRequest const> DateTimeRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator1> & lhs, const ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator2> & rhs)
{
  return lhs.date == rhs.date &&
    lhs.time == rhs.time;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator1> & lhs, const ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace accerion_driver_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3b195081359e05592449281fc8df87fc";
  }

  static const char* value(const ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3b195081359e0559ULL;
  static const uint64_t static_value2 = 0x2449281fc8df87fcULL;
};

template<class ContainerAllocator>
struct DataType< ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "accerion_driver_msgs/DateTimeRequest";
  }

  static const char* value(const ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string date                 # dd/mm/yyyy\n"
"string time                 # hh:mm:ss\n"
;
  }

  static const char* value(const ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.date);
      stream.next(m.time);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DateTimeRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::accerion_driver_msgs::DateTimeRequest_<ContainerAllocator>& v)
  {
    s << indent << "date: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.date);
    s << indent << "time: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.time);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACCERION_DRIVER_MSGS_MESSAGE_DATETIMEREQUEST_H
