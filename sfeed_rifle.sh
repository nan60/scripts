#!/bin/sh
input="$1"
if [[ "$input" == *"yewtu.be"* ]]; then
    mpv "$input"
else
    librewolf "$input"
fi