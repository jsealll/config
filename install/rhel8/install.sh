#! /bin/bash

if [[ -z $SUDO_UID || -z $SUDO_GID || -z $SUDO_USER ]]; then
    echo 'ERROR : This script must be executed with sudo'
    exit 1
fi
ROOT_HOME=`eval echo "~root"`
install -o root -g root -m 0644 ./root/.tmux.conf $ROOT_HOME/.tmux.conf
cat ./root/bashrc >> $ROOT_HOME/.bashrc
install -o root -g root -m 0644 ./root/.vimrc $ROOT_HOME/.vimrc
if [ -z $SUDO_USER ]; then
    echo 'ERROR : $SUDOUSER is empty string or unset'
    exit 1
fi
USER_HOME=`eval echo "~$SUDO_USER"`
install -o $SUDO_UID -g $SUDO_GID -m 0644 ./user/.tmux.conf $USER_HOME/.tmux.conf
cat ./user/bashrc >> $USER_HOME/.bashrc
install -o $SUDO_UID -g $SUDO_GID -m 0644 ./user/.vimrc $USER_HOME/.vimrc
sed -i -e "s/USER/$SUDO_USER/" ./etc/sudoers.d/USER
install -o root -g root -m 0644 ./etc/sudoers.d/USER /etc/sudoers.d/$SUDO_USER
