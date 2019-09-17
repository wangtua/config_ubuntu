!/bin/bash

echo "Install Python3"

echo yes|apt install python3


pypath=`which python`

mv `which python` ${pypath}2

ln -s `which python3` $pypath


pippath=`which pip`

mv `which pip` ${pippath}2

ln -s `which pip3` $pippath

pip install ipython

echo "Done! \n"

##################################################################

echo "Update & Config vim"

echo "set mouse-=a" >> ~/.vimrc

echo "Done!"

##################################################################

echo "Install thefuck "

pip3 install thefuck

echo fuck|fuck

source ~/.bashrc

echo "Done \n"
##################################################################




##################################################################

echo "Update Linux C++ uitls"

echo yes|apt install gdb g++ gcc 

echo "Done!"

##################################################################

echo "Install & Config git"

echo yes|apt install git

#git config --global user.name="XXXXXXXXXX"

#git config --global user.email="XXXXXXXXXX"

echo "Done!"

###################################################################

echo "Install pwntools & pwngdb & peda"

cd ~/
git clone https://github.com/scwuaptx/Pwngdb.git 
cp ~/Pwngdb/.gdbinit ~/

git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
echo "DONE! debug your program with gdb and enjoy"

pip3 install git+https://github.com/arthaud/python3-pwntools.git

echo "Done!"

###################################################################

echo "Install optimized mysql client -- mycli"

echo yes|apt install mycli

echo "Done!"

##################################################################

echo "Install optimized man  --  tldr"

echo yes|apt install tldr

echo "Done!"

##################################################################

echo "Install sougou input"



echo "Done!"
