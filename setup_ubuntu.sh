

echo "Init"

echo yes|apt-get update 

echo "Done"

#################################
echo "Install Python3"

echo yes|apt install python3-pip

echo yes|apt install python3

pypath=`which python`

if [ -z ${pypath} ]; then
    pypath="/usr/bin/pip"
else
    mv `which python` ${pypath}2
fi

ln -s `which python3` ${pypath}


pippath=`which pip`

if [ -z ${pippath} ]; then
 # miv `which pip` ${pippath}2;
     pippath="/usr/bin/pip"  
else
     mv `which pip` ${pippath}2;
fi


ln -s `which pip3` ${pippath}

pip3 install ipython

echo "Done! \n"

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

echo yes|apt install cmake pkg-config libtool

echo yes|apt install build-essential

echo yes|apt install gcc-multilib

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

echo "Install neovim"

echo yes|apt install neovim

vim_path=`which vim` 

nvim_path=`which nvim`

if [ -z ${vim_path} ] ; then
   vim_path="/usr/bin/vim"
else
   mv ${vim_path} ${vim_path}.bak
fi

ln -s ${nvim_path} ${vim_path}
#echo "alias vim=nvim" >> ~/.bashrc 

#source ~/.bashrc

echo "Done!"

#################################################################

echo "Install docker chian tool"

echo yes | apt install docker.io

echo yes | pip install docker-compose

echo "Done!"
################################################################


echo "Install lrzsz"

echo yes | apt install lrzsz

echo "Done !"

##############################################################

echo "Install metasploit"

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall &&   chmod 755 msfinstall &&   ./msfinstall

echo "Done !!!"
