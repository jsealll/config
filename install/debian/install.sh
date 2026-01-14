#! /bin/bash

if [[ $UID != 0 || $LOGNAME == 'root' ]]; then
    echo 'ERROR : This script must be executed with su -c'
    exit 1
fi
cat ./root/bashrc >> ~/.bashrc
install -o root -g root -m 0644 ./root/.tmux.conf ~/.tmux.conf
install -o root -g root -m 0644 ./root/.vimrc ~/.vimrc

if [[ -z $USER ]]; then
   echo 'ERROR: $USER is not defined'
   exit 1
fi
install -o root -g root -m 0644 ./etc/profile.d/umask.sh /etc/profile.d/umask.sh
install -o root -g root -m 0755 -d /etc/sudoers.d
install -o root -g root -m 0644 ./etc/sudoers.d/USER /etc/sudoers.d/$USER

USER_HOME=`eval echo "~$USER"`
install -o $USER -g $USER -m 0644 ./user/.tmux.conf $USER_HOME/.tmux.conf
install -o $USER -g $USER -m 0644 ./user/.bash_aliases $USER_HOME/.bash_aliases
install -o $USER -g $USER -m 0644 ./user/.vimrc $USER_HOME/.vimrc
sed -i -e "s/USER/$USER/" ./etc/sudoers.d/$USER
