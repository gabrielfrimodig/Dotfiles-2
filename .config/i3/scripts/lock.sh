#!/usr/bin/env bash

icon="$HOME/.config/i3/scripts/face.png"
tmpbg="$HOME/.config/i3/scripts/screen.png"

(( $# )) && { icon=$1; }

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
composite \
	"$icon" -gravity center -geometry +960 -matte \
	"$tmpbg" \
	"$tmpbg"
i3lock -u -i "$tmpbg"
rm "$tmpbg"
