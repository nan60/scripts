#!/bin/sh
for zipfile in *.zip; do
    rzp -x "$zipfile"
done