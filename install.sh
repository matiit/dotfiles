#!/bin/bash

INFOS=();

install () {
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
        echo "Installing oh-my-zsh.";
        sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
    else
        INFOS+="Zsh is already installed. Nothing to do.";
    fi
}

install;
vundle_install;
install_zsh;

for msg in "${INFOS[@]}"
do
	echo $msg;
done


