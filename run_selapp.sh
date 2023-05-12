#!/bin/bash

GETNO=$RANDOM

yad --icons --read-dir=/usr/share/applications \
    --display=$DISPLAY --plug=$GETNO --tabnum=1 &> /dev/null &

yad --icons --read-dir=/var/lib/snapd/desktop/applications \
    --display=$DISPLAY --plug=$GETNO --tabnum=2 &> /dev/null &

yad --icons --read-dir=/var/lib/flatpak/exports/share/applications \
    --display=$DISPLAY --plug=$GETNO --tabnum=3 &> /dev/null &

yad --notebook --key=$GETNO --display=$DISPLAY --tab="app" --tab="snap app" --tab="flatpak app"\
    --title="実行したいソフトのアイコンをダブルクリックして下さい" --width=800  --height=600 &> /dev/null &
