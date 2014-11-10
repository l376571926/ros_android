#!/bin/bash

my_loc="$(cd "$(dirname $0)" && pwd)"
source $my_loc/config.sh
source $my_loc/utils.sh

if [ $# != 1 ] || [ $1 == '-h' ] || [ $1 == '--help' ]; then
    echo "Usage: $0 prefix_path"
    echo "  example: $0 /home/user/my_workspace"
    exit 1
fi

prefix=$(cd $1 && pwd)
URL=https://github.com/osrf/bzip2_cmake.git

echo
echo -e '\e[34mGetting bzip2.\e[39m'
echo

[ -d $prefix/bzip2 ] || git clone $URL $prefix/bzip2
