#!/bin/sh
for file in *
do
    sum=`md5sum "$file"`
    ext=${file##*.}
    sum="${sum%  $file}.$ext"
    cp "$file" "../$sum"
done