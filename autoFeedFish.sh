#!/bin/bash

select_feeder(){
    # open feeder selection tab
    xdotool mousemove --sync 960 710 click 1
    sleep 0.5 # wait for the tab to be opened
    
    # select feeder
    case $1 in
        1) xdotool mousemove --sync 860 580 click 1;;
        2) xdotool mousemove --sync 900 580 click 1;;
        3) xdotool mousemove --sync 940 580 click 1;;
        4) xdotool mousemove --sync 980 580 click 1;; 
        5) xdotool mousemove --sync 1020 580 click 1;;
        6) xdotool mousemove --sync 1060 575 click 1;;
    esac
}

feed_fish(){
    xdotool mousemove_relative --sync 100 100 click --repeat $1 --delay 300 1
    xdotool mousemove_relative -- -100 -100 # cusor exit bowl
}

change_fish_bowl(){
    case $1 in
        1) xdotool mousemove --sync 660 300 click 1;;
        2) xdotool mousemove --sync 690 300 click 1;;
        3) xdotool mousemove --sync 720 300 click 1;;
        4) xdotool mousemove --sync 750 300 click 1;;
        5) xdotool mousemove --sync 780 300 click 1;;
    esac
}

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

select_feeder 1

# ===== bowl 1 =====
change_fish_bowl 1
feed_fish 3
sleep 20

# ===== bowl 2 =====
change_fish_bowl 2
feed_fish 3
sleep 15

# ===== bowl 3 =====
change_fish_bowl 3
feed_fish 3

# end
xdotool mousemove --sync 1055 735 click 1

