# awkbot
#! /bin/bash
# Place the 'awkbot' folder in the ii channel directory that you intend to run awkbot in.
while inotifywait -qq ../out;
do
tail -n 1 "../out" > input
gawk  '{if ($4 == "!awk") print "ward!" > "../in"}' input
gawk  '{if ($4 == "!hawk") print "http://global3.memecdn.com/hawkward_o_361560.jpg" > "../in"}' input
done


