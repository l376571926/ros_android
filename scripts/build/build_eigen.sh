#!/bin/bash

# Abort script on any failures
set -e

if [ $# != 1 ] || [ $1 == '-h' ] || [ $1 == '--help' ]; then
    echo "Usage: $0 boost_source_dir"
    echo "  example: $0 /home/user/my_workspace/poco-1.4.6p2"
    exit 1
fi

eigen_prefix=$(cd $1 && pwd)

[ "$CMAKE_PREFIX_PATH" = "" ] && die 'could not find target basedir. Have you run build_catkin.sh and sourced setup.bash?'
cd $CMAKE_PREFIX_PATH
mkdir -p include && cd include
cp -r $eigen_prefix/Eigen ./
cp -r $eigen_prefix/unsupported ./
