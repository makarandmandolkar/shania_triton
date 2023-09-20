// Generated by gencpp from file rt_carriage_controller_msgs/rt_carriage_controllerActionGoal.msg
// DO NOT EDIT!


#ifndef RT_CARRIAGE_CONTROLLER_MSGS_MESSAGE_RT_CARRIAGE_CONTROLLERACTIONGOAL_H
#define RT_CARRIAGE_CONTROLLER_MSGS_MESSAGE_RT_CARRIAGE_CONTROLLERACTIONGOAL_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <rt_carriage_controller_msgs/rt_carriage_controllerGoal.h>

namespace rt_carriage_controller_msgs
{
template <class ContainerAllocator>
struct rt_carriage_controllerActionGoal_
{
  typedef rt_carriage_controllerActionGoal_<ContainerAllocator> Type;

  rt_carriage_controllerActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  rt_carriage_controllerActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::rt_carriage_controller_msgs::rt_carriage_controllerGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct rt_carriage_controllerActionGoal_

typedef ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<std::allocator<void> > rt_carriage_controllerActionGoal;

typedef boost::shared_ptr< ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal > rt_carriage_controllerActionGoalPtr;
typedef boost::shared_ptr< ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal const> rt_carriage_controllerActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator1> & lhs, const ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator1> & lhs, const ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rt_carriage_controller_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "99f4200c0241fe9d7f48f5ef61c850bb";
  }

  static const char* value(const ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x99f4200c0241fe9dULL;
  static const uint64_t static_value2 = 0x7f48f5ef61c850bbULL;
};

template<class ContainerAllocator>
struct DataType< ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rt_carriage_controller_msgs/rt_carriage_controllerActionGoal";
  }

  static const char* value(const ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"rt_carriage_controllerGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: rt_carriage_controller_msgs/rt_carriage_controllerGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#goal\n"
"int32 MOVE_UNDEFINED_REQUEST=0\n"
"int32 MOVE_ABSOLUTE      =1\n"
"int32 MOVE_RELATIVE      =2\n"
"int32 CALIBRATE_REACH    =3\n"
"int32 CALIBRATE_LIFT     =4\n"
"int32 CALIBRATE_TILT     =5\n"
"int32 CALIBRATE_SIDESHIFT =6\n"
"\n"
"int32 move_type_enum\n"
"\n"
"float64 position_Goal\n"
"float32 position_tolerance\n"
"int32 mission_type_enum\n"
"int32 MISSION_PICK = 1\n"
"int32 MISSION_PLACE = 2\n"
"int32 SENSOR_NO_SENSE                              =7\n"
"int32 SENSOR_REACH_PAYLOAD_SENSE_LINEAR_CHANGE     =8\n"
"int32 SENSOR_REACH_PAYLOAD_SENSE_NO_CHANGE         =9\n"
"int32 SENSOR_REACH_FORKTIP_SENSE_COLLISION_CHANGE  =10\n"
"int32 SENSOR_REACH_UNTIL_FORKTIP_SENSE_SENSE_VALUE =11\n"
"int32 SENSOR_LIFT_UNTIL_LASER_READING =12\n"
"int32 sensor_type_enum\n"
"\n"
"float64 forktip_distance\n"
"\n"
;
  }

  static const char* value(const ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct rt_carriage_controllerActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rt_carriage_controller_msgs::rt_carriage_controllerActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::rt_carriage_controller_msgs::rt_carriage_controllerGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RT_CARRIAGE_CONTROLLER_MSGS_MESSAGE_RT_CARRIAGE_CONTROLLERACTIONGOAL_H
