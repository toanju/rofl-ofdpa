#!/bin/sh

# prefer git version over version file
if [ -x "$(which git)" -a -d .git ]
then
	VERSION=$(git describe  --dirty --always --tags)
elif [ -f VERSION ]
then
	VERSION=$(cat VERSION)
else
	exit 1
fi

echo ${VERSION} | tr -d '\n' 
