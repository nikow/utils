#!/bin/bash
set -x

repoDirectory=`pwd`
toolsDirectory=$repoDirectory/bin
localBinDirectory="$HOME/local/bin" 

cd $toolsDirectory

mkdir -p -v $localBinDirectory

for x in *;
	do 
	ln -v -s $toolsDirectory/$x $localBinDirectory/$x
done

exit 0
