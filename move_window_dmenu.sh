#!/usr/bin/env bash

w=`bspc query -D | dmenu -i -p 'Move to'`
(bspc query -D | grep "$w") || bspc monitor -a "$w"
bspc window -d "$w"
