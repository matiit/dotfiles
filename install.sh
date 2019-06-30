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

install;
vundle_install;

for msg in "${INFOS[@]}"
do
	echo $msg;
done


