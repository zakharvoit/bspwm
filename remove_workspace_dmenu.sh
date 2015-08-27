#!/usr/bin/env bash

bspc monitor -r "`bspc query -D | dmenu -i -p Remove`"
