// Generated by gencpp from file holonomic_controller/DockingFeedback.msg
// DO NOT EDIT!


#ifndef HOLONOMIC_CONTROLLER_MESSAGE_DOCKINGFEEDBACK_H
#define HOLONOMIC_CONTROLLER_MESSAGE_DOCKINGFEEDBACK_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace holonomic_controller
{
template <class ContainerAllocator>
struct DockingFeedback_
{
  typedef DockingFeedback_<ContainerAllocator> Type;

  DockingFeedback_()
    : status(0)  {
    }
  DockingFeedback_(const ContainerAllocator& _alloc)
    : status(0)  {
  (void)_alloc;
    }



   typedef int32_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::holonomic_controller::DockingFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::holonomic_controller::DockingFeedback_<ContainerAllocator> const> ConstPtr;

}; // struct DockingFeedback_

typedef ::holonomic_controller::DockingFeedback_<std::allocator<void> > DockingFeedback;

typedef boost::shared_ptr< ::holonomic_controller::DockingFeedback > DockingFeedbackPtr;
typedef boost::shared_ptr< ::holonomic_controller::DockingFeedback const> DockingFeedbackConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::holonomic_controller::DockingFeedback_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::holonomic_controller::DockingFeedback_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::holonomic_controller::DockingFeedback_<ContainerAllocator1> & lhs, const ::holonomic_controller::DockingFeedback_<ContainerAllocator2> & rhs)
{
  return lhs.status == rhs.status;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::holonomic_controller::DockingFeedback_<ContainerAllocator1> & lhs, const ::holonomic_controller::DockingFeedback_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace holonomic_controller

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::holonomic_controller::DockingFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::holonomic_controller::DockingFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::holonomic_controller::DockingFeedback_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::holonomic_controller::DockingFeedback_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::holonomic_controller::DockingFeedback_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::holonomic_controller::DockingFeedback_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::holonomic_controller::DockingFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "86791dcf1de997ec7de5a0de7e4dcfcc";
  }

  static const char* value(const ::holonomic_controller::DockingFeedback_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x86791dcf1de997ecULL;
  static const uint64_t static_value2 = 0x7de5a0de7e4dcfccULL;
};

template<class ContainerAllocator>
struct DataType< ::holonomic_controller::DockingFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "holonomic_controller/DockingFeedback";
  }

  static const char* value(const ::holonomic_controller::DockingFeedback_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::holonomic_controller::DockingFeedback_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#Feedback\n"
"int32 status\n"
;
  }

  static const char* value(const ::holonomic_controller::DockingFeedback_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::holonomic_controller::DockingFeedback_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DockingFeedback_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::holonomic_controller::DockingFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::holonomic_controller::DockingFeedback_<ContainerAllocator>& v)
  {
    s << indent << "status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // HOLONOMIC_CONTROLLER_MESSAGE_DOCKINGFEEDBACK_H
