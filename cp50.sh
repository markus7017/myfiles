#!/bin/sh
OLDPWD=$(pwd)

ohdir=~/Dev/openhab-5.0.1/git/openhab-addons/bundles/$ohbundledir
destdir=~/Dev/myfiles/$ohbundle/

echo Copy Code von $ohdir5/$ohbundledir/src/
cd $ohdir
rm -rf ./src
rm -rf ./target
if cp -r $ohdir5/$ohbundledir/src/ src/; then
	find . -name ".DS_Store" -type f -delete
	if mvn clean install; then
	  cp target/org.openhab.binding*.jar $destdir
	  rm -f $destdir/*sources.jar
	  echo "Build successful, jar copied to $destdir"
	  cd ~/Dev/myfiles
	  ./push.sh
    fi
else
    echo "Build failed"
fi

cd "$OLDPWD"
