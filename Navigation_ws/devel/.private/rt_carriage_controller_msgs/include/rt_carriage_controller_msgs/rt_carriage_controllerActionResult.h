// Generated by gencpp from file rt_carriage_controller_msgs/rt_carriage_controllerActionResult.msg
// DO NOT EDIT!


#ifndef RT_CARRIAGE_CONTROLLER_MSGS_MESSAGE_RT_CARRIAGE_CONTROLLERACTIONRESULT_H
#define RT_CARRIAGE_CONTROLLER_MSGS_MESSAGE_RT_CARRIAGE_CONTROLLERACTIONRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalStatus.h>
#include <rt_carriage_controller_msgs/rt_carriage_controllerResult.h>

namespace rt_carriage_controller_msgs
{
template <class ContainerAllocator>
struct rt_carriage_controllerActionResult_
{
  typedef rt_carriage_controllerActionResult_<ContainerAllocator> Type;

  rt_carriage_controllerActionResult_()
    : header()
    , status()
    , result()  {
    }
  rt_carriage_controllerActionResult_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , status(_alloc)
    , result(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalStatus_<ContainerAllocator>  _status_type;
  _status_type status;

   typedef  ::rt_carriage_controller_msgs::rt_carriage_controllerResult_<ContainerAllocator>  _result_type;
  _result_type result;





  typedef boost::shared_ptr< ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator> const> ConstPtr;

}; // struct rt_carriage_controllerActionResult_

typedef ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<std::allocator<void> > rt_carriage_controllerActionResult;

typedef boost::shared_ptr< ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult > rt_carriage_controllerActionResultPtr;
typedef boost::shared_ptr< ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult const> rt_carriage_controllerActionResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator1> & lhs, const ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.status == rhs.status &&
    lhs.result == rhs.result;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator1> & lhs, const ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rt_carriage_controller_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "f812e5170e8fd6193b71e14c1c433446";
  }

  static const char* value(const ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xf812e5170e8fd619ULL;
  static const uint64_t static_value2 = 0x3b71e14c1c433446ULL;
};

template<class ContainerAllocator>
struct DataType< ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rt_carriage_controller_msgs/rt_carriage_controllerActionResult";
  }

  static const char* value(const ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"rt_carriage_controllerResult result\n"
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
"MSG: actionlib_msgs/GoalStatus\n"
"GoalID goal_id\n"
"uint8 status\n"
"uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n"
"uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n"
"uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n"
"                            #   and has since completed its execution (Terminal State)\n"
"uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n"
"uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n"
"                            #    to some failure (Terminal State)\n"
"uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n"
"                            #    because the goal was unattainable or invalid (Terminal State)\n"
"uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n"
"                            #    and has not yet completed execution\n"
"uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n"
"                            #    but the action server has not yet confirmed that the goal is canceled\n"
"uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n"
"                            #    and was successfully cancelled (Terminal State)\n"
"uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n"
"                            #    sent over the wire by an action server\n"
"\n"
"#Allow for the user to associate a string with GoalStatus for debugging\n"
"string text\n"
"\n"
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
"MSG: rt_carriage_controller_msgs/rt_carriage_controllerResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"#result definition\n"
"bool success_Result\n"
"\n"
"int32 ERROR_EXCEEDED_TRAVEL=0\n"
"int32 ERROR_TIMEOUT=1\n"
"int32 ERROR_UNDEFINED_MOVE_TYPE=2\n"
"int32 ERROR_UNDEFINED_SENSOR_TYPE=3\n"
"int32 ERROR_STALL_DETECTED=4\n"
"int32 ERROR_DEADMAN_IS_OFF=5\n"
"\n"
"int32 error_enum\n"
"\n"
"float64 exceeded_distance\n"
"float64 allowable_distance\n"
"float64 final_position\n"
;
  }

  static const char* value(const ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.status);
      stream.next(m.result);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct rt_carriage_controllerActionResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rt_carriage_controller_msgs::rt_carriage_controllerActionResult_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "status: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalStatus_<ContainerAllocator> >::stream(s, indent + "  ", v.status);
    s << indent << "result: ";
    s << std::endl;
    Printer< ::rt_carriage_controller_msgs::rt_carriage_controllerResult_<ContainerAllocator> >::stream(s, indent + "  ", v.result);
  }
};

} // namespace message_operations
} // namespace ros

#endif // RT_CARRIAGE_CONTROLLER_MSGS_MESSAGE_RT_CARRIAGE_CONTROLLERACTIONRESULT_H
