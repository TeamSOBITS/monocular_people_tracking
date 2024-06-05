cmake_minimum_required(VERSION 3.10.2)
project(monocular_people_tracking)

add_compile_options(-std=c++14)

find_package(OpenCV 4.9.0 REQUIRED PATHS "/opt/opencv/opencv_4.9.0/")

find_package(catkin REQUIRED COMPONENTS
  roscpp
  cv_bridge
  tf
  tf_conversions
  image_transport
  # tfpose_ros
  lightweight_human_pose_estimation
  message_filters
  sensor_msgs
  visualization_msgs
  usb_cam
  image_view
)

########################
## message generation ##
########################
add_message_files(FILES
  Track.msg
  TrackArray.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
  geometry_msgs
  # tfpose_ros
  lightweight_human_pose_estimation
)

catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES monocular_people_tracking
#  CATKIN_DEPENDS roscpp
#  DEPENDS system_lib
)

###########
## Build ##
###########

include_directories(
# include
  ${catkin_INCLUDE_DIRS}
)


###########
## Build ##
###########
include_directories(
  include
  3rdparty/CppNumericalSolvers/include
  ${catkin_INCLUDE_DIRS}
)

add_executable(monocular_people_tracking_node
  src/track_system.cpp
  src/person_tracker.cpp
  src/people_tracker.cpp
  src/monocular_people_tracking_node.cpp
)
target_link_libraries(monocular_people_tracking_node
  ${catkin_LIBRARIES}
)
add_dependencies(monocular_people_tracking_node monocular_people_tracking_gencpp)
