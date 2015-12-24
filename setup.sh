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

# Add path file to bashrc
echo "# Add local utils to path" >> $HOME/.bashrc
echo "export PATH=$localBinDirectory:\$PATH" >> $HOME/.bashrc

exit 0
