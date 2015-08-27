#!/usr/bin/env bash

w=`bspc query -D | dmenu -i -p Switch`
(bspc query -D | grep "$w") || bspc monitor -a "$w"
bspc desktop -f "$w"
