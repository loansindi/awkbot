# awkbot
#! /bin/bash

while inotifywait -qq /home/derek/irc/chat.freenode.org/#pumpingstationone/out;
do gawk ' 
   COMMANDS="!awk";
    if ($2 == "!awk") 
      echo "Awk!" > /home/derek/irc/chat.freenode.org/#pumpingstationone/in;
  '
done
