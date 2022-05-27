#!/bin/sh

fullPath="${HOME}/.config/scripts/storage/polybarShowHide.txt"
oldValue=$( cat ${fullPath} )

if [ $(( ${oldValue} % 2 )) = 0 ]
then
  xdo show -N Polybar
else
  xdo hide -N Polybar
fi

newValue=$(( ${oldValue}+1 ))

sed -i "s/${oldValue}/${newValue}/g" ${fullPath}

exit 1
