source pub.sh

# Inital call and setting

ros2 service call /turtle1/set_pin "{r: 255, g: 30, b: 255}"

ros2 service call /spawn turtlesim/srv/TeleportAbsolute "{x: -3, y: 0, theta: 0.0}" 

# R

parameter --once  /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: -4.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
parameter --once  /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: 4.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
parameter --once  /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
parameter  --once  /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: -0.8, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
parameter --once  /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: -2.0, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
parameter --once  /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 2.0, y: -3.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"


#Off
ros2 service call /turtle1/set_pen turtlesim/srv/SetPen "{'off': 1 }"
parameter --once  /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 1.5, y: 4.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"

#ON
ros 2 service call /turtle1/set_pen turtlesim/srv/SetPen "{'off': 0 }"
ros2 service call /turtle1/set_pin "{r: 255, g: 15, b: 50}"

# H 

parameter --once  /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: -4.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
parameter --once  /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: 2.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
parameter --once  /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 1.50, y: 0.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
parameter --once  /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: -2.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"
parameter --once  /turtle1/cmd_vel geometry_msgs/msg/Twist "{linear: {x: 0.0, y: 4.0, z: 0.0}, angular: {x: 0.0, y: 0.0, z: 0.0}}"


#END FILE
