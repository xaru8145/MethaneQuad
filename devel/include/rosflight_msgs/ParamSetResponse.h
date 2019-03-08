// Generated by gencpp from file rosflight_msgs/ParamSetResponse.msg
// DO NOT EDIT!


#ifndef ROSFLIGHT_MSGS_MESSAGE_PARAMSETRESPONSE_H
#define ROSFLIGHT_MSGS_MESSAGE_PARAMSETRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace rosflight_msgs
{
template <class ContainerAllocator>
struct ParamSetResponse_
{
  typedef ParamSetResponse_<ContainerAllocator> Type;

  ParamSetResponse_()
    : exists(false)  {
    }
  ParamSetResponse_(const ContainerAllocator& _alloc)
    : exists(false)  {
  (void)_alloc;
    }



   typedef uint8_t _exists_type;
  _exists_type exists;





  typedef boost::shared_ptr< ::rosflight_msgs::ParamSetResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rosflight_msgs::ParamSetResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ParamSetResponse_

typedef ::rosflight_msgs::ParamSetResponse_<std::allocator<void> > ParamSetResponse;

typedef boost::shared_ptr< ::rosflight_msgs::ParamSetResponse > ParamSetResponsePtr;
typedef boost::shared_ptr< ::rosflight_msgs::ParamSetResponse const> ParamSetResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rosflight_msgs::ParamSetResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rosflight_msgs::ParamSetResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace rosflight_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'rosflight_msgs': ['/home/xaru8145/catkin_ws/src/rosflight/rosflight_msgs/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::rosflight_msgs::ParamSetResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rosflight_msgs::ParamSetResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosflight_msgs::ParamSetResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rosflight_msgs::ParamSetResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosflight_msgs::ParamSetResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rosflight_msgs::ParamSetResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rosflight_msgs::ParamSetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e8c90de4adc1219c86af9c2874c0c1b5";
  }

  static const char* value(const ::rosflight_msgs::ParamSetResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe8c90de4adc1219cULL;
  static const uint64_t static_value2 = 0x86af9c2874c0c1b5ULL;
};

template<class ContainerAllocator>
struct DataType< ::rosflight_msgs::ParamSetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rosflight_msgs/ParamSetResponse";
  }

  static const char* value(const ::rosflight_msgs::ParamSetResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rosflight_msgs::ParamSetResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool exists\n\
\n\
";
  }

  static const char* value(const ::rosflight_msgs::ParamSetResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rosflight_msgs::ParamSetResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.exists);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ParamSetResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rosflight_msgs::ParamSetResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rosflight_msgs::ParamSetResponse_<ContainerAllocator>& v)
  {
    s << indent << "exists: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.exists);
  }
};

} // namespace message_operations
} // namespace ros

#endif // ROSFLIGHT_MSGS_MESSAGE_PARAMSETRESPONSE_H
