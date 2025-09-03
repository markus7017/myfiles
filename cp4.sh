#!/bin/sh
OLDPWD=$(pwd)

ohdir=$ohdir4/$ohbundledir
destdir=~/Dev/myfiles/$ohbundle/
suffix=""
if [[ -n "$1" ]]; then
  suffix="-$1"
fi

cd $ohdir
echo Copy Code von $ohdir5/$ohbundledir/src/ to $(pwd)/src
rm -rf ./src
rm -rf ./target
jenv local 17
if cp -r $ohdir5/$ohbundledir/src/ src/; then
    ~/Dev/myfiles/$ohbundle/convert_v5_v4.sh
	find . -name ".DS_Store" -type f -delete
	if mvn clean install -Pj17 -Dohc.version=4.3.0; then
      jar=$(ls target/org.openhab.binding.${ohbundle}-*-SNAPSHOT.jar 2>/dev/null | head -n 1)
      basename="${jar#target/}"
      basename="${basename%.jar}"
      src_name="target/$basename.jar"
      dst_name="$destdir/$basename$suffix.jar"
	  cp $src_name $dst_name
	  echo "Build successful, $jar copied to $destdir"
	  cd ~/Dev/myfiles
	  ./push.sh
    fi
else
    echo "Build failed"
fi

cd "$OLDPWD"
