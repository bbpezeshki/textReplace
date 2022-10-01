#!/bin/bash

export TO_REPLACE=$1
export REPLACE_TO=$2
export DIR=$3
export IN_FILESTEM=$4
export SUFFIX=$5

echo 'replacing:  '$1
echo '     with:  '$2
echo '    under:  '$3'/'
echo '     dirs:  all'
echo '    files:  '$4$5

find "$3" -name "$4$5" -exec sed -i -e "s/$TO_REPLACE/$REPLACE_TO/g" {} \;
find "$3" -depth -type f -name "$4$5" -execdir rename "s/$TO_REPLACE/$REPLACE_TO/g" {} \;
find "$3" -depth -type d -name "$4" -execdir rename "s/$TO_REPLACE/$REPLACE_TO/g" {} \;
