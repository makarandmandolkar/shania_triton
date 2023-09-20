// Generated by gencpp from file accerion_driver_msgs/SendMapGoal.msg
// DO NOT EDIT!


#ifndef ACCERION_DRIVER_MSGS_MESSAGE_SENDMAPGOAL_H
#define ACCERION_DRIVER_MSGS_MESSAGE_SENDMAPGOAL_H


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
struct SendMapGoal_
{
  typedef SendMapGoal_<ContainerAllocator> Type;

  SendMapGoal_()
    : path()
    , placement_mode(0)  {
    }
  SendMapGoal_(const ContainerAllocator& _alloc)
    : path(_alloc)
    , placement_mode(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _path_type;
  _path_type path;

   typedef uint8_t _placement_mode_type;
  _placement_mode_type placement_mode;





  typedef boost::shared_ptr< ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator> const> ConstPtr;

}; // struct SendMapGoal_

typedef ::accerion_driver_msgs::SendMapGoal_<std::allocator<void> > SendMapGoal;

typedef boost::shared_ptr< ::accerion_driver_msgs::SendMapGoal > SendMapGoalPtr;
typedef boost::shared_ptr< ::accerion_driver_msgs::SendMapGoal const> SendMapGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator1> & lhs, const ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator2> & rhs)
{
  return lhs.path == rhs.path &&
    lhs.placement_mode == rhs.placement_mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator1> & lhs, const ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace accerion_driver_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "919b148512493030d5e926b3d870a6ab";
  }

  static const char* value(const ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x919b148512493030ULL;
  static const uint64_t static_value2 = 0xd5e926b3d870a6abULL;
};

template<class ContainerAllocator>
struct DataType< ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "accerion_driver_msgs/SendMapGoal";
  }

  static const char* value(const ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# goal\n"
"string path                 # Path where the file is located or should be stored\n"
"uint8 placement_mode        # In case of a map, 0 = replace, 1 = merge, 2 = update\n"
;
  }

  static const char* value(const ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path);
      stream.next(m.placement_mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SendMapGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::accerion_driver_msgs::SendMapGoal_<ContainerAllocator>& v)
  {
    s << indent << "path: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.path);
    s << indent << "placement_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.placement_mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACCERION_DRIVER_MSGS_MESSAGE_SENDMAPGOAL_H
