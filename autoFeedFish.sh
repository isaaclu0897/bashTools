#!/bin/bash

#sleep 5

xdotool key space

xdotool key Escape
#sleep 3

# search window
WID=`xdotool search --name "Google Chrome"`

# activate window
xdotool windowactivate --sync $WID

# open happyfishbowl
xdotool mousemove --sync 90 40 click 1

# open feeder selection tab
xdotool mousemove --sync 960 710 click 1
sleep 0.5 # wait for the tab to be opened

# select feeder
xdotool mousemove 860 580 click 1
# xdotool mousemove 900 580 click 1

# xdotool mousemove 940 580 click 1
# xdotool mousemove 980 580 click 1

# xdotool mousemove 1020 580 click 1
# xdotool mousemove 1060 575 click 1

# ===== bowl 1 =====
xdotool mousemove --sync 750 300 click 1

# feed to point
xdotool mousemove --sync 800 400 click --repeat 2 --delay 300 1
xdotool mousemove 300 500
sleep 20

# ===== bowl 2 =====
xdotool mousemove --sync 715 300 click 1

# feed to point
xdotool mousemove --sync 800 400 click --repeat 2 --delay 300 1
xdotool mousemove 300 500
sleep 15

# ===== bowl 3 =====
xdotool mousemove --sync 690 300 click 1

# feed to point
xdotool mousemove --sync 800 400 click --repeat 2 --delay 300 1

# end
xdotool mousemove --sync 1058 735 click 1

# xdotool mousemove 1055 715 click 1
# xdotool mousemove 1030 690 click 1

