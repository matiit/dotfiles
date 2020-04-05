#!/bin/bash

INFOS=();

install_curl() {
    if [ ! -f /usr/bin/curl ]; then
        sudo apt install curl;
    fi
}

install_git() {
    if [ ! -f /usr/bin/git ]; then
        sudo apt install git;
    fi
}

install_files() {
    for file in src/*; do
      echo "Installing $file";
      FILENAME=$(basename $file);
      cp $file /home/$USER/.$FILENAME;
    done;
}

vundle_install() {
    if [ -d ~/.vim/bundle/Vundle.vim ]; then
        echo "Vundle is already insalled. Nothing to do.";
    else
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim;
        INFOS+="To finish up vundle installation, open vim and run :VundleInstall command";
    fi
}

install_zsh() {
    if [ ! -f /usr/bin/zsh ]; then
        sudo apt install -y zsh;
        chsh -s /usr/bin/zsh $USER;
    else
        INFOS+="Zsh is already installed. Nothing to do.";
    fi
}

install_oh_my_zsh() {
    if [ ! -d ~/.oh_my_zsh ]; then
        echo "Installing oh-my-zsh.";
            sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    fi
}

install_curl;
install_files;
vundle_install;
install_zsh;
install_oh_my_zsh;

for msg in "${INFOS[@]}"
do
	echo $msg;
done


