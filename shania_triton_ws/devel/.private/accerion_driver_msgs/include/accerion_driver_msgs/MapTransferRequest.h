// Generated by gencpp from file accerion_driver_msgs/MapTransferRequest.msg
// DO NOT EDIT!


#ifndef ACCERION_DRIVER_MSGS_MESSAGE_MAPTRANSFERREQUEST_H
#define ACCERION_DRIVER_MSGS_MESSAGE_MAPTRANSFERREQUEST_H


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
struct MapTransferRequest_
{
  typedef MapTransferRequest_<ContainerAllocator> Type;

  MapTransferRequest_()
    : path()
    , placement_mode(0)  {
    }
  MapTransferRequest_(const ContainerAllocator& _alloc)
    : path(_alloc)
    , placement_mode(0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _path_type;
  _path_type path;

   typedef uint8_t _placement_mode_type;
  _placement_mode_type placement_mode;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(REPLACE)
  #undef REPLACE
#endif
#if defined(_WIN32) && defined(MERGE)
  #undef MERGE
#endif
#if defined(_WIN32) && defined(UPDATE)
  #undef UPDATE
#endif

  enum {
    REPLACE = 0u,
    MERGE = 1u,
    UPDATE = 2u,
  };


  typedef boost::shared_ptr< ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator> const> ConstPtr;

}; // struct MapTransferRequest_

typedef ::accerion_driver_msgs::MapTransferRequest_<std::allocator<void> > MapTransferRequest;

typedef boost::shared_ptr< ::accerion_driver_msgs::MapTransferRequest > MapTransferRequestPtr;
typedef boost::shared_ptr< ::accerion_driver_msgs::MapTransferRequest const> MapTransferRequestConstPtr;

// constants requiring out of line definition

   

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator1> & lhs, const ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator2> & rhs)
{
  return lhs.path == rhs.path &&
    lhs.placement_mode == rhs.placement_mode;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator1> & lhs, const ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace accerion_driver_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "13a5580f121f32043d8aa6270f27d900";
  }

  static const char* value(const ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x13a5580f121f3204ULL;
  static const uint64_t static_value2 = 0x3d8aa6270f27d900ULL;
};

template<class ContainerAllocator>
struct DataType< ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "accerion_driver_msgs/MapTransferRequest";
  }

  static const char* value(const ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string path                 # Path where the file is located or should be stored\n"
"uint8 placement_mode        # In case of a map, 0 = replace, 1 = merge, 2 = update\n"
"uint8 REPLACE = 0\n"
"uint8 MERGE = 1\n"
"uint8 UPDATE = 2\n"
;
  }

  static const char* value(const ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.path);
      stream.next(m.placement_mode);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MapTransferRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::accerion_driver_msgs::MapTransferRequest_<ContainerAllocator>& v)
  {
    s << indent << "path: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.path);
    s << indent << "placement_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.placement_mode);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ACCERION_DRIVER_MSGS_MESSAGE_MAPTRANSFERREQUEST_H
