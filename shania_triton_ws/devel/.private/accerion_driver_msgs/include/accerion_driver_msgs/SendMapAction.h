// Generated by gencpp from file accerion_driver_msgs/SendMapAction.msg
// DO NOT EDIT!


#ifndef ACCERION_DRIVER_MSGS_MESSAGE_SENDMAPACTION_H
#define ACCERION_DRIVER_MSGS_MESSAGE_SENDMAPACTION_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <accerion_driver_msgs/SendMapActionGoal.h>
#include <accerion_driver_msgs/SendMapActionResult.h>
#include <accerion_driver_msgs/SendMapActionFeedback.h>

namespace accerion_driver_msgs
{
template <class ContainerAllocator>
struct SendMapAction_
{
  typedef SendMapAction_<ContainerAllocator> Type;

  SendMapAction_()
    : action_goal()
    , action_result()
    , action_feedback()  {
    }
  SendMapAction_(const ContainerAllocator& _alloc)
    : action_goal(_alloc)
    , action_result(_alloc)
    , action_feedback(_alloc)  {
  (void)_alloc;
    }



   typedef  ::accerion_driver_msgs::SendMapActionGoal_<ContainerAllocator>  _action_goal_type;
  _action_goal_type action_goal;

   typedef  ::accerion_driver_msgs::SendMapActionResult_<ContainerAllocator>  _action_result_type;
  _action_result_type action_result;

   typedef  ::accerion_driver_msgs::SendMapActionFeedback_<ContainerAllocator>  _action_feedback_type;
  _action_feedback_type action_feedback;





  typedef boost::shared_ptr< ::accerion_driver_msgs::SendMapAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::accerion_driver_msgs::SendMapAction_<ContainerAllocator> const> ConstPtr;

}; // struct SendMapAction_

typedef ::accerion_driver_msgs::SendMapAction_<std::allocator<void> > SendMapAction;

typedef boost::shared_ptr< ::accerion_driver_msgs::SendMapAction > SendMapActionPtr;
typedef boost::shared_ptr< ::accerion_driver_msgs::SendMapAction const> SendMapActionConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::accerion_driver_msgs::SendMapAction_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::accerion_driver_msgs::SendMapAction_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::accerion_driver_msgs::SendMapAction_<ContainerAllocator1> & lhs, const ::accerion_driver_msgs::SendMapAction_<ContainerAllocator2> & rhs)
{
  return lhs.action_goal == rhs.action_goal &&
    lhs.action_result == rhs.action_result &&
    lhs.action_feedback == rhs.action_feedback;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::accerion_driver_msgs::SendMapAction_<ContainerAllocator1> & lhs, const ::accerion_driver_msgs::SendMapAction_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace accerion_driver_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::accerion_driver_msgs::SendMapAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::accerion_driver_msgs::SendMapAction_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::accerion_driver_msgs::SendMapAction_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::accerion_driver_msgs::SendMapAction_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::accerion_driver_msgs::SendMapAction_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::accerion_driver_msgs::SendMapAction_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::accerion_driver_msgs::SendMapAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "39dd6a0e691ae162f928d40fa4803e4b";
  }

  static const char* value(const ::accerion_driver_msgs::SendMapAction_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x39dd6a0e691ae162ULL;
  static const uint64_t static_value2 = 0xf928d40fa4803e4bULL;
};

template<class ContainerAllocator>
struct DataType< ::accerion_driver_msgs::SendMapAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "accerion_driver_msgs/SendMapAction";
  }

  static const char* value(const ::accerion_driver_msgs::SendMapAction_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::accerion_driver_msgs::SendMapAction_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"SendMapActionGoal action_goal\n"
"SendMapActionResult action_result\n"
"SendMapActionFeedback action_feedback\n"
"\n"
"================================================================================\n"
"MSG: accerion_driver_msgs/SendMapActionGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"SendMapGoal goal\n"
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
"MSG: accerion_driver_msgs/SendMapGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# goal\n"
"string path                 # Path where the file is located or should be stored\n"
"uint8 placement_mode        # In case of a map, 0 = replace, 1 = merge, 2 = update\n"
"\n"
"================================================================================\n"
"MSG: accerion_driver_msgs/SendMapActionResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"SendMapResult result\n"
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
"MSG: accerion_driver_msgs/SendMapResult\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# result\n"
"bool done                   # sets the action to a finite state\n"
"bool success                # boolean that holds whether the request has been made\n"
"string message              # message that contains information about the request(success/failure etc.)\n"
"\n"
"================================================================================\n"
"MSG: accerion_driver_msgs/SendMapActionFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalStatus status\n"
"SendMapFeedback feedback\n"
"\n"
"================================================================================\n"
"MSG: accerion_driver_msgs/SendMapFeedback\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"# feedback\n"
"int32 progress              # message that contains information about the current progress\n"
;
  }

  static const char* value(const ::accerion_driver_msgs::SendMapAction_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::accerion_driver_msgs::SendMapAction_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.action_goal);
      stream.next(m.action_result);
      stream.next(m.action_feedback);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SendMapAction_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::accerion_driver_msgs::SendMapAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::accerion_driver_msgs::SendMapAction_<ContainerAllocator>& v)
  {
    s << indent << "action_goal: ";
    s << std::endl;
    Printer< ::accerion_driver_msgs::SendMapActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
    s << std::endl;
    Printer< ::accerion_driver_msgs::SendMapActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
    s << std::endl;
    Printer< ::accerion_driver_msgs::SendMapActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACCERION_DRIVER_MSGS_MESSAGE_SENDMAPACTION_H
