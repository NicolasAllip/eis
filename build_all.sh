#!/usr/bin/env sh
set -e
cd ejemplo_banco
bundle install
bundle exec rake
cd ..
cd chopper
bundle install
bundle exec rake
cd ..
cd piedra-papel-tijera-mono
bundle install
bundle exec rake
cd ..
cd Batalla Naval
cd base_cucumber
bundle install
bundle exec rake
