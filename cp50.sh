#!/bin/sh
OLDPWD=$(pwd)

ohdir=~/Dev/openhab-5.0.1/git/openhab-addons/bundles/$ohbundledir
destdir=~/Dev/myfiles/$ohbundle
suffix=""
if [[ -n "$1" ]]; then
  suffix="-$1"
fi

echo Copy Code von $ohdir5/$ohbundledir/src/
cd $ohdir
rm -rf ./src
rm -rf ./target
if cp -r $ohdir5/$ohbundledir/src/ src/; then
	find . -name ".DS_Store" -type f -delete
	if mvn clean install -D skipChecks; then
      jar=$(ls target/org.openhab.binding.${ohbundle}-*-SNAPSHOT.jar 2>/dev/null | head -n 1)
      basename="${jar%.jar}"
      echo "cp $basename.jar $destdir/$basename$suffix.jar"
      read
	  cp $basename.jar $destdir/$basename$suffix.jar
	  echo "Build successful, jar copied to $destdir"
	  cd ~/Dev/myfiles
	  ./push.sh
    fi
else
    echo "Build failed"
fi

cd "$OLDPWD"
