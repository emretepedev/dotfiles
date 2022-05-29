#!/bin/sh

fullPath="${HOME}/.config/scripts/storage/polybarShowHide.txt"

if ! [ -f $fullPath ]
then
    touch $fullPath
    echo 0 > $fullPath
fi

oldValue=$( cat ${fullPath} )

if [ -z $oldValue ]
then
    echo 0 > $file
    oldValue=0
fi

if [ $(( ${oldValue} % 2 )) = 0 ]
then
  xdo show -N Polybar
else
  xdo hide -N Polybar
fi

newValue=$(( ${oldValue}+1 ))

sed -i "s/${oldValue}/${newValue}/g" ${fullPath}

exit 1
