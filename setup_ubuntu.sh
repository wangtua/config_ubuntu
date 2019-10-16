

#Tips
#1) don't change the file /etc/apt/source.list
########

TOOL_PATH = "./tool_path"

echo "Init"

echo yes|apt-get update 

echo "Done"

#################################
echo "Install Python3"

echo yes|apt install python3

if [ $? -eq 0 ];then

    pypath=`which python`

    py3path=which python3` 

    if [ -z ${pypath} ]; then

       pypath="/usr/bin/python"

    else
    
        mv ${pypath} ${pypath}2
    
    fi

    ln -s ${py3path} ${pypath}

fi


echo yes|apt install python3-pip

if [ $? -eq 0 ];then

    pippath=`which pip`
    
    pip3path=`which pip3` 

    if [ -z ${pippath} ]; then
 
        pippath="/usr/bin/pip"  

    else
        mv ${pippath} ${pippath}2;
    
    fi


    ln -s ${pip3path} ${pippath}

fi

pip3 install ipython

echo "Done! \n"

##################################################################

echo "Install thefuck "

pip3 install thefuck

fuck

fuck

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

mkdir ${TOOL_PATH}

cd ~/
git clone https://github.com/scwuaptx/Pwngdb.git 
cp ~/Pwngdb/.gdbinit ~/

git clone https://github.com/longld/peda.git ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
echo "DONE! debug your program with gdb and enjoy"

cd -
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


if [ $? -eq 0 ];then

    vim_path=`which vim` 

    nvim_path=`which nvim`

    if [ -z ${vim_path} ] ; then

       vim_path="/usr/bin/vim"

    else

       mv ${vim_path} ${vim_path}.bak

    fi

    ln -s ${nvim_path} ${vim_path}

fi

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


curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > ${TOOL_PATH}"/msfinstall" && chmod 755 ${TOOL_PATH}"/msfinstall" &&   ${TOOL_PATH}"/msfinstall"

echo "Done !!!"
