// Generated by gencpp from file multi_map_server/MultiSparseMap3D.msg
// DO NOT EDIT!


#ifndef MULTI_MAP_SERVER_MESSAGE_MULTISPARSEMAP3D_H
#define MULTI_MAP_SERVER_MESSAGE_MULTISPARSEMAP3D_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <multi_map_server/SparseMap3D.h>
#include <geometry_msgs/Pose.h>

namespace multi_map_server
{
template <class ContainerAllocator>
struct MultiSparseMap3D_
{
  typedef MultiSparseMap3D_<ContainerAllocator> Type;

  MultiSparseMap3D_()
    : maps()
    , origins()  {
    }
  MultiSparseMap3D_(const ContainerAllocator& _alloc)
    : maps(_alloc)
    , origins(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::multi_map_server::SparseMap3D_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::multi_map_server::SparseMap3D_<ContainerAllocator> >::other >  _maps_type;
  _maps_type maps;

   typedef std::vector< ::geometry_msgs::Pose_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Pose_<ContainerAllocator> >::other >  _origins_type;
  _origins_type origins;





  typedef boost::shared_ptr< ::multi_map_server::MultiSparseMap3D_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::multi_map_server::MultiSparseMap3D_<ContainerAllocator> const> ConstPtr;

}; // struct MultiSparseMap3D_

typedef ::multi_map_server::MultiSparseMap3D_<std::allocator<void> > MultiSparseMap3D;

typedef boost::shared_ptr< ::multi_map_server::MultiSparseMap3D > MultiSparseMap3DPtr;
typedef boost::shared_ptr< ::multi_map_server::MultiSparseMap3D const> MultiSparseMap3DConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::multi_map_server::MultiSparseMap3D_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::multi_map_server::MultiSparseMap3D_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::multi_map_server::MultiSparseMap3D_<ContainerAllocator1> & lhs, const ::multi_map_server::MultiSparseMap3D_<ContainerAllocator2> & rhs)
{
  return lhs.maps == rhs.maps &&
    lhs.origins == rhs.origins;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::multi_map_server::MultiSparseMap3D_<ContainerAllocator1> & lhs, const ::multi_map_server::MultiSparseMap3D_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace multi_map_server

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsFixedSize< ::multi_map_server::MultiSparseMap3D_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::multi_map_server::MultiSparseMap3D_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::multi_map_server::MultiSparseMap3D_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::multi_map_server::MultiSparseMap3D_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::multi_map_server::MultiSparseMap3D_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::multi_map_server::MultiSparseMap3D_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::multi_map_server::MultiSparseMap3D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2e3d76c98ee3e2b23a422f64965f6418";
  }

  static const char* value(const ::multi_map_server::MultiSparseMap3D_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2e3d76c98ee3e2b2ULL;
  static const uint64_t static_value2 = 0x3a422f64965f6418ULL;
};

template<class ContainerAllocator>
struct DataType< ::multi_map_server::MultiSparseMap3D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "multi_map_server/MultiSparseMap3D";
  }

  static const char* value(const ::multi_map_server::MultiSparseMap3D_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::multi_map_server::MultiSparseMap3D_<ContainerAllocator> >
{
  static const char* value()
  {
    return "SparseMap3D[] maps\n"
"geometry_msgs/Pose[] origins\n"
"\n"
"================================================================================\n"
"MSG: multi_map_server/SparseMap3D\n"
"Header header\n"
"nav_msgs/MapMetaData info\n"
"VerticalOccupancyGridList[] lists\n"
"\n"
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
"MSG: nav_msgs/MapMetaData\n"
"# This hold basic information about the characterists of the OccupancyGrid\n"
"\n"
"# The time at which the map was loaded\n"
"time map_load_time\n"
"# The map resolution [m/cell]\n"
"float32 resolution\n"
"# Map width [cells]\n"
"uint32 width\n"
"# Map height [cells]\n"
"uint32 height\n"
"# The origin of the map [m, m, rad].  This is the real-world pose of the\n"
"# cell (0,0) in the map.\n"
"geometry_msgs/Pose origin\n"
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
"\n"
"================================================================================\n"
"MSG: multi_map_server/VerticalOccupancyGridList\n"
"float32 x\n"
"float32 y\n"
"int32[] upper\n"
"int32[] lower\n"
"int32[] mass\n"
"\n"
;
  }

  static const char* value(const ::multi_map_server::MultiSparseMap3D_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::multi_map_server::MultiSparseMap3D_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.maps);
      stream.next(m.origins);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MultiSparseMap3D_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::multi_map_server::MultiSparseMap3D_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::multi_map_server::MultiSparseMap3D_<ContainerAllocator>& v)
  {
    s << indent << "maps[]" << std::endl;
    for (size_t i = 0; i < v.maps.size(); ++i)
    {
      s << indent << "  maps[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::multi_map_server::SparseMap3D_<ContainerAllocator> >::stream(s, indent + "    ", v.maps[i]);
    }
    s << indent << "origins[]" << std::endl;
    for (size_t i = 0; i < v.origins.size(); ++i)
    {
      s << indent << "  origins[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Pose_<ContainerAllocator> >::stream(s, indent + "    ", v.origins[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // MULTI_MAP_SERVER_MESSAGE_MULTISPARSEMAP3D_H
