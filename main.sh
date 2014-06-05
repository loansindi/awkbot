# awkbot
#! /bin/bash

while inotifywait -qq /home/derek/irc/chat.freenode.org/#pumpingstationone/out;
do
tail -n 1 "/home/derek/irc/chat.freenode.org/#pumpingstationone/out" | gawk '{if ($4 == "!awk") print "ward!" > "/home/derek/irc/chat.freenode.org/#pumpingstationone/in"}'
done
