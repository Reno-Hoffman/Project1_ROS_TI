#!/bin/bash

function call_for_data{
ros2 turtlesim turtlesim_node
opt ="$1"
topic_name = "$2"
msg_type = "$3"
msg = "$4"


echo $topic_name
ros2 topic pub $opt $topic_name $msg_type "$msg"
}




