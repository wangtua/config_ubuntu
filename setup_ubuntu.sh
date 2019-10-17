
#
#Tips
#1) don't modify the file /etc/apt/source.list  
########

export LANG="en_US.UTF-8"

TOOL_PATH="./tool_path"
TIME_STAMP=`date +%y%m%d`
################################################3

echo "Init APT"
echo yes|apt-get update 
echo "Done"

#################################

echo "Installing Python3"
echo yes|apt install --upgrade python3  >> log.${time_stamp}

install_status_python3=$?

if [ ! -z `python -V 2>&1|grep -i "python 3"`  ];then

    echo "Python3 is already installed and configed"
    
elif [ $install_status_python3 -eq 0 ]; then  # install succeeded 
    echo "install "
    pypath=`which python`
    py3path=`which python3`

    if [ -z ${pypath} ]; then
        pypath="/usr/bin/python"        
    else
        mv ${pypath} ${pypath}2.bak        
    fi

    ln -s ${py3path} ${pypath}
else

    echo "Error occured while installing Python3 by apt" >&2

fi


###############################################################


echo "Installing pip3"
echo yes|apt install --upgrade python3-pip >> log.${time_stamp}

install_status_pip3=$?

if [ ! -z `pip -V 2>&1|grep -i "python 3"`  ]; then

    echo "Python3 is already installed and configed"
    
elif [ $install_status_pip3 -eq 0 ] ;then # install succeeded 

    pippath=`which pip`
    pip3path=`which pip3`

    if [ -z ${pippath} ]; then
        pippath="/usr/bin/pip"        
    else
        mv ${pippath} ${pippath}2.bak      
    fi
  
    ln -s ${pip3path} ${pippath}   

else

    echo "Error occured while installing pip3 by apt" >&2

fi

#########################################################
echo "Installing iPython"

pip3 install ipython >> log.${time_stamp}

echo "Done! \n"

##################################################################

echo "Install thefuck "

pip3 install thefuck >> log.${time_stamp}

fuck

fuck

source ~/.bashrc

echo "Done \n"

##################################################################




##################################################################

echo "Update Linux C++ uitls"

echo yes|apt install --upgrade gdb g++ gcc >> log.${time_stamp}

echo yes|apt install --upgrade cmake pkg-config libtool >> log.${time_stamp}

echo yes|apt install --upgrade build-essential >> log.${time_stamp}
 
echo yes|apt install --upgrade gcc-multilib >> log.${time_stamp}

echo "Done!"

##################################################################

echo "Install & Config git"

echo yes|apt install --upgrade git >> log.${time_stamp}

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

echo yes|apt install --upgrade mycli >> log.${time_stamp}

echo "Done!"

##################################################################

echo "Install optimized man  --  tldr"

echo yes|apt install --upgrade tldr >> log.${time_stamp}

echo "Done!"

##################################################################

echo "Install neovim"

echo yes|apt install --upgrade neovim >> log.${time_stamp}

install_status_nvim=$?

if [ ! -z `vim --help 2>&1|grep -i "nvim"`  ]; then

    echo "neovim is already installed and configed"
    
elif [ $install_status_nvim -eq 0 ] ;then # install succeeded 

    vimpath=`which vim`
    nvimpath=`which nvim`

    if [ -z ${vimpath} ]; then
        vimpath="/usr/bin/vim"        
    else
        mv ${vimpath} ${vimpath}.bak  
    fi
      
    ln -s ${nvimpath} ${vimpath}
    
else

    echo "Error occured while installing neovim by apt" >&2

fi

echo "Done!"

#################################################################

echo "Install docker chian tool"

echo yes | apt install --upgrade docker.io >> log.${time_stamp}

echo yes | pip install --upgrade docker-compose >> log.${time_stamp}

echo "Done!"
################################################################


echo "Install lrzsz"

echo yes | apt install --upgrade lrzsz >> log.${time_stamp}

echo "Done !"

##############################################################

echo "Install metasploit"

curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > ${TOOL_PATH}"/msfinstall" && chmod 755 ${TOOL_PATH}"/msfinstall" &&   ${TOOL_PATH}"/msfinstall"

echo "Done !!!"

################################################################

echo "search sploit"

# https://github.com/offensive-security/exploitdb
# https://www.freebuf.com/sectool/146106.html
echo yes | apt -y install exploitdb 
echo "Done!!!"
