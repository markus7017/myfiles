#!/bin/sh
OLDPWD=$(pwd)

ohdir=$ohdir4/$ohbundledir
destdir=~/Dev/myfiles/$ohbundle/

cd $ohdir
echo Copy Code von $ohdir5/$ohbundledir/src/ to $(pwd)/src
rm -rf ./src
rm -rf ./target
jenv local 17
if cp -r $ohdir5/$ohbundledir/src/ src/; then
    ~/Dev/myfiles/$ohbundle/convert_v5_v4.sh
	find . -name ".DS_Store" -type f -delete
	if mvn clean install -Pj17 -Dohc.version=4.3.0; then
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
