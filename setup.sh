#!/bin/bash

PACKAGE_NAME="ansible"

YUM_CMD=$(which dnf)
APT_GET_CMD=$(which apt-get)
BREW_CMD=$(which brew)


if [[ ! -z $YUM_CMD ]]; then
   sudo dnf -y install $PACKAGE_NAME
elif [[ ! -z $APT_GET_CMD ]]; then
   sudo apt-get -y install $PACKAGE_NAME
elif [[ ! -z $OTHER_CMD ]]; then
   brew install $PACKAGE_NAME
else
   echo "error can't install package $PACKAGE"
   exit 1;
fi
ansible-playbook -i "localhost,"  -c local setup.yml --ask-become-pass "$@"
