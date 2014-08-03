#!/bin/bash

if [ $# != 1 ]; then
  exit
fi

echo "WARNING: This Will Rebuild Your Local Database , Press [Ctrl + c] To Exit"
read -p Continue?  

echo "droping database..."
bundle exec rake db:migrate RAILS_ENV=$1

echo "building from schema..."
bundle exec rake db:schema:load RAILS_ENV=$1

echo "running migrating..."
bundle exec rake db:migrate RAILS_ENV=$1

echo "loading seed..."
bundle exec rake db:seed RAILS_ENV=$1

echo "DataBase Reset Over"
