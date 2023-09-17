#!/bin/sh
input="$1"
rand=cbz_img-$(tr -dc A-Za-z0-9 </dev/urandom | head -c 13 ; echo '')

7z e "$1" -o/tmp/$rand
nsxiv /tmp/$rand/*.png /tmp/$rand/*.jpg

# Do this on quit of nsxiv
rm -r /tmp/$rand