#!/bin/sh
shopt -s expand_aliases
source ~/.bash_profile   # lädt deine interaktiven Aliase
alias

ohdev4
cd $ohdir4/$ohbundledir
rm -r ./src
rm -t ./target
cp -r $ohdir5/$ohbundledir/src/ src/
~/Dev/myfiles/$ohbundle/convert_v5_v4.sh
rmds

ohb4

