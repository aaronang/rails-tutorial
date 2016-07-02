#!/usr/bin/env bash

echo 'LC_ALL="en_US.UTF-8"' | sudo tee -a /etc/environment

curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get update
sudo apt-get install -y git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev nodejs

git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
# echo "gem: --no-document" > ~/.gemrc
# source ~/.bashrc
# rbenv install -v 2.3.1
# rbenv global 2.3.1
# gem install bundler
# gem install rails -v 5.0.0
# rbenv rehash
