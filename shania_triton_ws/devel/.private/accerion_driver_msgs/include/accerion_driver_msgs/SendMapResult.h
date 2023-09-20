// Generated by gencpp from file accerion_driver_msgs/SendMapResult.msg
// DO NOT EDIT!


#ifndef ACCERION_DRIVER_MSGS_MESSAGE_SENDMAPRESULT_H
#define ACCERION_DRIVER_MSGS_MESSAGE_SENDMAPRESULT_H


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
struct SendMapResult_
{
  typedef SendMapResult_<ContainerAllocator> Type;

  SendMapResult_()
    : done(false)
    , success(false)
    , message()  {
    }
  SendMapResult_(const ContainerAllocator& _alloc)
    : done(false)
    , success(false)
    , message(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _done_type;
  _done_type done;

   typedef uint8_t _success_type;
  _success_type success;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _message_type;
  _message_type message;





  typedef boost::shared_ptr< ::accerion_driver_msgs::SendMapResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::accerion_driver_msgs::SendMapResult_<ContainerAllocator> const> ConstPtr;

}; // struct SendMapResult_

typedef ::accerion_driver_msgs::SendMapResult_<std::allocator<void> > SendMapResult;

typedef boost::shared_ptr< ::accerion_driver_msgs::SendMapResult > SendMapResultPtr;
typedef boost::shared_ptr< ::accerion_driver_msgs::SendMapResult const> SendMapResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::accerion_driver_msgs::SendMapResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::accerion_driver_msgs::SendMapResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::accerion_driver_msgs::SendMapResult_<ContainerAllocator1> & lhs, const ::accerion_driver_msgs::SendMapResult_<ContainerAllocator2> & rhs)
{
  return lhs.done == rhs.done &&
    lhs.success == rhs.success &&
    lhs.message == rhs.message;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::accerion_driver_msgs::SendMapResult_<ContainerAllocator1> & lhs, const ::accerion_driver_msgs::SendMapResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace accerion_driver_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::accerion_driver_msgs::SendMapResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::accerion_driver_msgs::SendMapResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::accerion_driver_msgs::SendMapResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::accerion_driver_msgs::SendMapResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::accerion_driver_msgs::SendMapResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::accerion_driver_msgs::SendMapResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::accerion_driver_msgs::SendMapResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "feba6950b54caccd02a3a7def5344230";
  }

  static const char* value(const ::accerion_driver_msgs::SendMapResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfeba6950b54caccdULL;
  static const uint64_t static_value2 = 0x02a3a7def5344230ULL;
};

template<class ContainerAllocator>
struct DataType< ::accerion_driver_msgs::SendMapResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "accerion_driver_msgs/SendMapResult";
  }

  static const char* value(const ::accerion_driver_msgs::SendMapResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::accerion_driver_msgs::SendMapResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# result\n"
"bool done                   # sets the action to a finite state\n"
"bool success                # boolean that holds whether the request has been made\n"
"string message              # message that contains information about the request(success/failure etc.)\n"
;
  }

  static const char* value(const ::accerion_driver_msgs::SendMapResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::accerion_driver_msgs::SendMapResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.done);
      stream.next(m.success);
      stream.next(m.message);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SendMapResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::accerion_driver_msgs::SendMapResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::accerion_driver_msgs::SendMapResult_<ContainerAllocator>& v)
  {
    s << indent << "done: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.done);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "message: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.message);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACCERION_DRIVER_MSGS_MESSAGE_SENDMAPRESULT_H
