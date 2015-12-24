#!/bin/bash
#set -e
#set -x

if [ -z $@ ]; then
    echo "Usage: $0 <link> [link] [link...]"
    echo ""
    echo "Where link you can pass every link able to download for youtube-dl"
    exit 1
fi

set -x
for x in $@ ; do 
    #echo "Downloading $x";
    while true ; do yt "$x" && break ; done
done

exit 0
