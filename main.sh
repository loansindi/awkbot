#! /bin/bash
# Place the 'awkbot' folder in the ii channel directory that you intend to run awkbot in.
while inotifywait -qq ../out;
do
tail -n 1 "../out" > input
gawk  '{if ($4 == "!awk") print "ward!" > "../in"}' input
gawk  '{if ($4 == "!hawk") print "http://img.sparknotes.com/images/user_uploads/0a95201ef4deb96155d925e66abc6b5fb0e9168e_LargeWide.jpg" > "../in"}' input
gawk  '{if ($4 == "!d20") print "4" > "../in"}' input
gawk  '{if ($4 == "!clap") print "http://img3.wikia.nocookie.net/__cb20110705203442/glee/images/3/38/Orson-welles-clapping.gif" > "../in"}' input
gawk  '{if ($4 == "!annoyo") print "Bry" > "../in"}' input
gawk  '{if ($4 == "!pun") print($5, "has made a pun. Shame!") > "../in"}' input
done



