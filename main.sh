# awkbot
#! /bin/bash

while inotifywait -qq /home/derek/irc/chat.freenode.org/#pumpingstationone/out;
do
LAST_LINE = $(tail -n 1 /home/derek/irc/chat.freenode.org/#pumpingstationone/out)
gawk '{if($1=="!awk")
        echo "Awk!" > /home/derek/irc/chat.freenode.org/#pumpingstationone/out}'
done
