#!/usr/bin/env bash

if !([ -f .version ]); then
    echo "version=0.0.0" > .version
fi
version=`cat .version | sed -e "s/version=//"`
major=$(echo $version | cut -d\. -f1);
minor=$(echo $version | cut -d\. -f2);
patch=$(echo $version | cut -d\. -f3);
if [ "$1" = "major" ]; then 
    major=$(printf "%d" $(($major + 1))) ;
    minor=0 ;
    patch=0 ;
fi
if [ "$1" = "minor" ]; then 
    minor=$(printf "%d" $(($minor + 1))) ;
    patch=0 ;
fi
if [ "$1" = "patch" ]; then 
    echo "patching $patch"
    patch=$(printf "%d" $(($patch + 1))) ;
fi
version=$(printf "%d.%d.%d" $major $minor $patch) ;
echo "$version"
echo "version=$version" > .version
echo `cat .version`
