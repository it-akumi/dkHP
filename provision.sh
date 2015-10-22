#!/usr/bin/env bash

# set locale
export LANG='ja_JP.UTF-8'

# set local time
sudo cp -f /usr/share/zoneinfo/Japan /etc/localtime

# install necessary packages
sudo yum install -y httpd zsh git bzip2-devel.x86_64

# set $HOME
export HOME='/home/vagrant'

# set $SHELL
chsh -s /bin/zsh vagrant

# install and set dotfiles
git clone https://github.com/it-akumi/dotfiles
cd dotfiles
./dotfilesLink.sh

# install and set pyenv
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
/home/vagrant/.pyenv/bin/pyenv install 3.5.0
/home/vagrant/.pyenv/bin/pyenv global 3.5.0
/home/vagrant/.pyenv/bin/pyenv rehash

# install and set rbenv
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
/home/vagrant/.rbenv/bin/rbenv install 2.2.3
/home/vagrant/.rbenv/bin/rbenv global 2.2.3
/home/vagrant/.rbenv/bin/rbenv rehash

# reload .zshrc
source ~/.zshrc
