// Generated by gencpp from file autorally_msgs/pathIntegralStatus.msg
// DO NOT EDIT!


#ifndef AUTORALLY_MSGS_MESSAGE_PATHINTEGRALSTATUS_H
#define AUTORALLY_MSGS_MESSAGE_PATHINTEGRALSTATUS_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace autorally_msgs
{
template <class ContainerAllocator>
struct pathIntegralStatus_
{
  typedef pathIntegralStatus_<ContainerAllocator> Type;

  pathIntegralStatus_()
    : header()
    , info()
    , status(0)  {
    }
  pathIntegralStatus_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , info(_alloc)
    , status(0)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _info_type;
  _info_type info;

   typedef int32_t _status_type;
  _status_type status;





  typedef boost::shared_ptr< ::autorally_msgs::pathIntegralStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::autorally_msgs::pathIntegralStatus_<ContainerAllocator> const> ConstPtr;

}; // struct pathIntegralStatus_

typedef ::autorally_msgs::pathIntegralStatus_<std::allocator<void> > pathIntegralStatus;

typedef boost::shared_ptr< ::autorally_msgs::pathIntegralStatus > pathIntegralStatusPtr;
typedef boost::shared_ptr< ::autorally_msgs::pathIntegralStatus const> pathIntegralStatusConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::autorally_msgs::pathIntegralStatus_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::autorally_msgs::pathIntegralStatus_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace autorally_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': True}
// {'sensor_msgs': ['/opt/ros/melodic/share/sensor_msgs/cmake/../msg'], 'autorally_msgs': ['/home/odroid/catkin_ws/src/autorally/autorally_msgs/msg'], 'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/melodic/share/geometry_msgs/cmake/../msg'], 'diagnostic_msgs': ['/opt/ros/melodic/share/diagnostic_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::autorally_msgs::pathIntegralStatus_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::autorally_msgs::pathIntegralStatus_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autorally_msgs::pathIntegralStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::autorally_msgs::pathIntegralStatus_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autorally_msgs::pathIntegralStatus_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::autorally_msgs::pathIntegralStatus_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::autorally_msgs::pathIntegralStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "02d521c9eb95ab130c6fffe5772d2229";
  }

  static const char* value(const ::autorally_msgs::pathIntegralStatus_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x02d521c9eb95ab13ULL;
  static const uint64_t static_value2 = 0x0c6fffe5772d2229ULL;
};

template<class ContainerAllocator>
struct DataType< ::autorally_msgs::pathIntegralStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "autorally_msgs/pathIntegralStatus";
  }

  static const char* value(const ::autorally_msgs::pathIntegralStatus_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::autorally_msgs::pathIntegralStatus_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n\
\n\
string info\n\
int32 status\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
";
  }

  static const char* value(const ::autorally_msgs::pathIntegralStatus_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::autorally_msgs::pathIntegralStatus_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.info);
      stream.next(m.status);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct pathIntegralStatus_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::autorally_msgs::pathIntegralStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::autorally_msgs::pathIntegralStatus_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "info: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.info);
    s << indent << "status: ";
    Printer<int32_t>::stream(s, indent + "  ", v.status);
  }
};

} // namespace message_operations
} // namespace ros

#endif // AUTORALLY_MSGS_MESSAGE_PATHINTEGRALSTATUS_H
