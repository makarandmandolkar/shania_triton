// Generated by gencpp from file rt_mission_msgs/write_pallet_location_to_fileRequest.msg
// DO NOT EDIT!


#ifndef RT_MISSION_MSGS_MESSAGE_WRITE_PALLET_LOCATION_TO_FILEREQUEST_H
#define RT_MISSION_MSGS_MESSAGE_WRITE_PALLET_LOCATION_TO_FILEREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <geometry_msgs/Pose.h>

namespace rt_mission_msgs
{
template <class ContainerAllocator>
struct write_pallet_location_to_fileRequest_
{
  typedef write_pallet_location_to_fileRequest_<ContainerAllocator> Type;

  write_pallet_location_to_fileRequest_()
    : pallet_name()
    , pallet_pose_in_map()  {
    }
  write_pallet_location_to_fileRequest_(const ContainerAllocator& _alloc)
    : pallet_name(_alloc)
    , pallet_pose_in_map(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _pallet_name_type;
  _pallet_name_type pallet_name;

   typedef  ::geometry_msgs::Pose_<ContainerAllocator>  _pallet_pose_in_map_type;
  _pallet_pose_in_map_type pallet_pose_in_map;





  typedef boost::shared_ptr< ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator> const> ConstPtr;

}; // struct write_pallet_location_to_fileRequest_

typedef ::rt_mission_msgs::write_pallet_location_to_fileRequest_<std::allocator<void> > write_pallet_location_to_fileRequest;

typedef boost::shared_ptr< ::rt_mission_msgs::write_pallet_location_to_fileRequest > write_pallet_location_to_fileRequestPtr;
typedef boost::shared_ptr< ::rt_mission_msgs::write_pallet_location_to_fileRequest const> write_pallet_location_to_fileRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator1> & lhs, const ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator2> & rhs)
{
  return lhs.pallet_name == rhs.pallet_name &&
    lhs.pallet_pose_in_map == rhs.pallet_pose_in_map;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator1> & lhs, const ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rt_mission_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "82666a4af21a5b483be60cd78ba12a30";
  }

  static const char* value(const ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x82666a4af21a5b48ULL;
  static const uint64_t static_value2 = 0x3be60cd78ba12a30ULL;
};

template<class ContainerAllocator>
struct DataType< ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rt_mission_msgs/write_pallet_location_to_fileRequest";
  }

  static const char* value(const ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string pallet_name\n"
"geometry_msgs/Pose pallet_pose_in_map\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Pose\n"
"# A representation of pose in free space, composed of position and orientation. \n"
"Point position\n"
"Quaternion orientation\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Quaternion\n"
"# This represents an orientation in free space in quaternion form.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"float64 w\n"
;
  }

  static const char* value(const ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.pallet_name);
      stream.next(m.pallet_pose_in_map);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct write_pallet_location_to_fileRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rt_mission_msgs::write_pallet_location_to_fileRequest_<ContainerAllocator>& v)
  {
    s << indent << "pallet_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.pallet_name);
    s << indent << "pallet_pose_in_map: ";
    s << std::endl;
    Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "  ", v.pallet_pose_in_map);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RT_MISSION_MSGS_MESSAGE_WRITE_PALLET_LOCATION_TO_FILEREQUEST_H
