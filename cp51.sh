#!/bin/sh
OLDPWD=$(pwd)

ohdir=$ohdir5/$ohbundledir
destdir=~/Dev/myfiles/$ohbundle/

cd $ohdir
find . -name ".DS_Store" -type f -delete
if mvn clean install; then
  cp target/org.openhab.binding*.jar $destdir
  rm -f $destdir/*sources.jar
  echo "Build successful, jar copied to $destdir"
  cd ~/Dev/myfiles
  ./push.sh
else
  echo "Build failed"
fi

cd "$OLDPWD"
