#!/bin/sh
git clone https://github.com/creationix/nvm.git ~/.nvm
source ~/.nvm/nvm.sh
nvm install 0.12.7
nvm alias default v0.12.7

IFS='/'
set -- $SHELL
echo -e '\n# configuration of nvm\nif [[ -s ~/.nvm/nvm.sh ]];\n then source ~/.nvm/nvm.sh\nfi' >> ~/.$3rc
source ~/.${3}rc
npm install jade -g
