# awkbot
#! /bin/bash

while inotifywait -qq /home/derek/irc/chat.freenode.org/#pumpingstationone/out;
do
tail -n 1 "/home/derek/irc/chat.freenode.org/#pumpingstationone/out" > input
gawk '{if ($4 == "!awk") print "ward!" > "/home/derek/irc/chat.freenode.org/#pumpingstationone/in"}' input
gawk '{if ($4 == "!hawk") print "http://global3.memecdn.com/hawkward_o_361560.jpg" > "/home/derek/irc/chat.freenode.org/#pumpingstationone/in"}' input
done


