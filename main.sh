# awkbot
#! /bin/bash

while inotifywait -qq ../#pumpingstationone/out;
do
tail -n 1 "../#pumpingstationone/out" | gawk '{if ($4 == "!awk") print "ward!" > "../#pumpingstationone/in"}'
done
