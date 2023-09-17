#!/bin/sh
for zipfile in *.zip; do
    rzp -x "$zipfile" -o "./$zipdir/${zipfile%%.zip}"
done