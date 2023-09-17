#!/bin/sh
for file in *
do 
    7z a -bb3 -tzip "${file}.cbz" "${file}"
done