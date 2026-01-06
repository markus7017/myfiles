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
jenv local 21
if cp -r $ohdir5/$ohbundledir/src/ src/; then
    ~/Dev/myfiles/convert_v5.2_v5.0.sh
    if mvn clean install -Dohc.version=5.0.0; then
      jar=$(ls target/org.openhab.binding.${ohbundle}-*-SNAPSHOT.jar 2>/dev/null | head -n 1)
      basename="${jar#target/}"
      basename="${basename%.jar}"
      src_name="target/$basename.jar"
      dst_name="$destdir/$basename$suffix.jar"
#	  cp $src_name $dst_name
#	  echo "Build successful, $jar copied to $destdir"
#	  cd ~/Dev/myfiles
#	  ./push.sh
    fi
else
    echo "Build failed"
fi

cd "$OLDPWD"
