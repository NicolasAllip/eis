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
cd batalla_naval
bundle install
bundle exec rake
cd ..
cd Calculadora
bundle install
bundle exec rake
