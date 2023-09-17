#!/bin/sh
input="$1"
if [[ "$input" = *"yewtu.be"* ]]; then
	exec mpv $input
else
	exec librewolf $input
fi