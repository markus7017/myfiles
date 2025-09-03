#!/bin/sh
OLDPWD=$(pwd)

if ~/Dev/myfiles/cp51.sh; then
  if ~/Dev/myfiles/cp50.sh; then
    if ~/Dev/myfiles/cp4.sh; then
      echo "All version build successful"
    else
      echo "Build 4.3.x failed"
    fi
  else
    echo "Build 5.0.x failed"
  fi
else
  echo "Build 5.1.x failed"
fi

cd "$OLDPWD"

