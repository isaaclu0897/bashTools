#!/bin/bash

#sleep 5

xdotool key space

xdotool key Escape
#sleep 3

# search window
WID=`xdotool search --name "Google Chrome"`

# activate window
xdotool windowactivate $WID

# open happyfishbowl
xdotool mousemove 90 40 click 1

# open feeder selection tab
xdotool mousemove 960 710 click 1
sleep 1

# select feeder
# xdotool mousemove 860 580 click 1
# xdotool mousemove 900 580 click 1

# xdotool mousemove 940 580 click 1
# xdotool mousemove 980 580 click 1

# xdotool mousemove 1020 580 click 1
# xdotool mousemove 1060 575 click 1

# ===== bowl 1 =====
xdotool mousemove 750 300 click 1

# go to feed place
xdotool mousemove 800 400

# feed
xdotool click --repeat 2 --delay 300 1
xdotool mousemove 300 500
sleep 20

# ===== bowl 2 =====
xdotool mousemove 715 300 click 1

# go to feed place
xdotool mousemove 800 400

# feed
xdotool click --repeat 2 --delay 300 1
xdotool mousemove 300 500
sleep 15

# ===== bowl 3 =====
xdotool mousemove 690 300 click 1

# go to feed place
xdotool mousemove 800 400

# feed
xdotool click --repeat 2 --delay 300 1
xdotool mousemove 300 500

# end
xdotool mousemove 1058 735 click 1

# xdotool mousemove 1055 715 click 1
# xdotool mousemove 1030 690 click 1

