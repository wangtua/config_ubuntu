!/bin/bash

echo "Install Python3"

echo yes|apt install python3


pypath=`which python`

mv `which python` ${pypath}2

ln -s `which python3` $pypath


pippath=`which pip`

mv `which pip` ${pippath}2

ln -s `which pip3` $pippath

echo "Done! \n"
##################################################################

echo "Install thefuck "

pip3 install thefuck

echo fuck|fuck

source ~/.bashrc

echo "Done \n"

##################################################################

echo "Update Linux C++ uitls"

echo yes|apt install gdb g++ gcc 

echo "Done!"

###################################################################

echo "Install optimized mysql client -- mycli"

echo yes|apt install mycli

echo "Done!"

##################################################################

echo "Install optimized man  --  tldr"

echo yes|apt install tldr

echo "Done!"
