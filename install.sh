install () {
    for file in src/*; do
      echo "Installing $file";
      FILENAME=$(basename $file);
      cp $file ~/.$FILENAME;
    done;
}

install;

