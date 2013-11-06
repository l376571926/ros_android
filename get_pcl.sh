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
#URL=https://github.com/patmarion/pcl-superbuild
 
#[ -d $prefix/pcl ] || git clone $URL $prefix/pcl

URL=https://github.com/PointCloudLibrary/pcl/archive/pcl-1.7.0.tar.gz
download_gz $URL $prefix