#!/bin/bash
#set -x
#set -e

if [ -z $@ ]; then
    echo "Usage: $0 <link>"
    echo ""
    echo "Where link you can pass every link able to pass to youtube-dl. It mean not only YT links!"
    echo "It will spawn your "yt repo file", just start ./update and when you have yt in your path, it will start downloading repo. Later it will update it."
    exit 1
fi

if [ -f update.sh ]; then
    echo "update.sh allready exists, you can not spawn new update.sh file"
    echo "Appending new links to existing spawner will be added later"
    exit 1
fi

echo "#!/bin/bash" > update.sh
echo "" >> update.sh
echo "set -e" >> update.sh
echo "set -x" >> update.sh
echo "" >> update.sh
echo "while true ; do yt \"$1\" && break ; done" >> update.sh
chmod +x update.sh
stat update.sh

exit 0
