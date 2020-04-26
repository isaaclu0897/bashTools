#!/bin/bash

# search window
WID=`xdotool search --name "Google Chrome"`

# activate window
xdotool windowactivate $WID
sleep 0.5

# open happyfishbowl
xdotool mousemove 90 40 click 1
sleep 1

# open feed
xdotool mousemove 960 710 click 1
sleep 1

# select feed
xdotool mousemove 900 580 click 1
# xdotool mousemove 1025 575 click 1
sleep 1

# ===== bowl 1 =====
xdotool mousemove 750 300 click 1
sleep 1

# go to feed place
xdotool mousemove 800 400
sleep 0.5

# feed
xdotool click --repeat 3 --delay 300 1
sleep 5

# ===== bowl 2 =====
xdotool mousemove 715 300 click 1
sleep 1

# go to feed place
xdotool mousemove 800 400
sleep 0.5

# feed
xdotool click --repeat 3 --delay 300 1
sleep 5

# ===== bowl 3 =====
xdotool mousemove 690 300 click 1
sleep 1

# go to feed place
xdotool mousemove 800 400
sleep 0.5

# feed
xdotool click --repeat 3 --delay 300 1

# end
xdotool mousemove 1055 715 click 1
sleep 0.5
xdotool mousemove 1030 690 click 1
sleep 0.5
