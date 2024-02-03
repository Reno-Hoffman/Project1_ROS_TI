#!/bin/bash
#sub.sh

source ./pub.sh

function argument_topic()
{

echo -e "Type the topic_name: \c"
read topic_name
echo "Topic name is: $topic_name"
sleep 1


echo -e "Type the file_name: \c"
read file_name
echo -e "THE File is named is: $file_name"
sleep1

echo -e "Publishing rate: \c"
read pub_rate





ros2 topic echo $topic_name>$file_name.csv
}
