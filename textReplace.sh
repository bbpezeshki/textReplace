#!/bin/bash

export TO_REPLACE=$1
export REPLACE_TO=$2
export DIR=$3
export IN_FILESTEM=$4
export SUFFIX=$5

echo 'replacing:  '$1
echo '     with:  '$2
echo '       in:  -r '$3'/'$4$5

find "$3" -name "$4$5" -exec sed -i -e "s/$TO_REPLACE/$REPLACE_TO/g" {} \;
