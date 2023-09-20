// Generated by gencpp from file accerion_driver_msgs/GetG2oFeedback.msg
// DO NOT EDIT!


#ifndef ACCERION_DRIVER_MSGS_MESSAGE_GETG2OFEEDBACK_H
#define ACCERION_DRIVER_MSGS_MESSAGE_GETG2OFEEDBACK_H


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
struct GetG2oFeedback_
{
  typedef GetG2oFeedback_<ContainerAllocator> Type;

  GetG2oFeedback_()
    : progress(0)  {
    }
  GetG2oFeedback_(const ContainerAllocator& _alloc)
    : progress(0)  {
  (void)_alloc;
    }



   typedef int32_t _progress_type;
  _progress_type progress;





  typedef boost::shared_ptr< ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct GetG2oFeedback_

typedef ::accerion_driver_msgs::GetG2oFeedback_<std::allocator<void> > GetG2oFeedback;

typedef boost::shared_ptr< ::accerion_driver_msgs::GetG2oFeedback > GetG2oFeedbackPtr;
typedef boost::shared_ptr< ::accerion_driver_msgs::GetG2oFeedback const> GetG2oFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator1> & lhs, const ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.progress == rhs.progress;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator1> & lhs, const ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace accerion_driver_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "3068c2ff8fa67c9565c90bbf9331baeb";
  }

  static const char* value(const ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x3068c2ff8fa67c95ULL;
  static const uint64_t static_value2 = 0x65c90bbf9331baebULL;
};

template<class ContainerAllocator>
struct DataType< ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "accerion_driver_msgs/GetG2oFeedback";
  }

  static const char* value(const ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# feedback\n"
"int32 progress              # message that contains information about the current progress\n"
;
  }

  static const char* value(const ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.progress);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct GetG2oFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::accerion_driver_msgs::GetG2oFeedback_<ContainerAllocator>& v)
  {
    s << indent << "progress: ";
    Printer<int32_t>::stream(s, indent + "  ", v.progress);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACCERION_DRIVER_MSGS_MESSAGE_GETG2OFEEDBACK_H
