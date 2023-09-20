// Generated by gencpp from file fuse_navigation_msgs/ExecutePathResult.msg
// DO NOT EDIT!


#ifndef FUSE_NAVIGATION_MSGS_MESSAGE_EXECUTEPATHRESULT_H
#define FUSE_NAVIGATION_MSGS_MESSAGE_EXECUTEPATHRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace fuse_navigation_msgs
{
template <class ContainerAllocator>
struct ExecutePathResult_
{
  typedef ExecutePathResult_<ContainerAllocator> Type;

  ExecutePathResult_()
    : finished_mission(false)  {
    }
  ExecutePathResult_(const ContainerAllocator& _alloc)
    : finished_mission(false)  {
  (void)_alloc;
    }



   typedef uint8_t _finished_mission_type;
  _finished_mission_type finished_mission;





  typedef boost::shared_ptr< ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator> const> ConstPtr;

}; // struct ExecutePathResult_

typedef ::fuse_navigation_msgs::ExecutePathResult_<std::allocator<void> > ExecutePathResult;

typedef boost::shared_ptr< ::fuse_navigation_msgs::ExecutePathResult > ExecutePathResultPtr;
typedef boost::shared_ptr< ::fuse_navigation_msgs::ExecutePathResult const> ExecutePathResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator1> & lhs, const ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator2> & rhs)
{
  return lhs.finished_mission == rhs.finished_mission;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator1> & lhs, const ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace fuse_navigation_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d54e29b77f6150086a487e84800793cc";
  }

  static const char* value(const ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd54e29b77f615008ULL;
  static const uint64_t static_value2 = 0x6a487e84800793ccULL;
};

template<class ContainerAllocator>
struct DataType< ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fuse_navigation_msgs/ExecutePathResult";
  }

  static const char* value(const ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# Result\n"
"bool finished_mission\n"
;
  }

  static const char* value(const ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.finished_mission);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ExecutePathResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::fuse_navigation_msgs::ExecutePathResult_<ContainerAllocator>& v)
  {
    s << indent << "finished_mission: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.finished_mission);
  }
};

} // namespace message_operations
} // namespace ros

#endif // FUSE_NAVIGATION_MSGS_MESSAGE_EXECUTEPATHRESULT_H
