# README

ruby -v
rvm -v
rvm --default use 2.3.0

rvm gemset create saasapp
rvm gemset list

rvm --default use ruby-2.3.0@saasapp
gem install rails -v 5.0.0 --no-ri --no-rdoc
rails s -b $IP -p $PORT