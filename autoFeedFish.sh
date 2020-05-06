#!/bin/bash

select_feeder(){
    # open feeder selection tab
    xdotool mousemove --sync 960 710 click 1;
    sleep 0.5; # wait for the tab to be opened
    
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
    xdotool mousemove_relative --sync 100 100 click --repeat $1 --delay 300 1;
    xdotool mousemove_relative -- -100 -100; # cusor exit bowl
}

change_fish_bowl(){
    case $1 in
        1) xdotool mousemove --sync 660 300 click 1;;
        2) xdotool mousemove --sync 690 300 click 1;;
        3) xdotool mousemove --sync 720 300 click 1;;
        4) xdotool mousemove --sync 750 300 click 1;;
        5) xdotool mousemove --sync 780 300 click 1;;
    esac

    sleep 0.5;
}

feed_bowl(){
    # feed_bowl bowl food sleep
    change_fish_bowl $1;
    feed_fish $2;
    sleep $3;
}

# search window
WID=`xdotool search --name "Google Chrome"`;

# activate window
xdotool windowactivate --sync $WID;

# switch first tab
xdotool key ctrl+t;

xdotool key ctrl+l;

xdotool type https://apps.facebook.com/happyfishbowl/;

xdotool key Return;
xdotool key Return;


sleep 15;

xdotool mousemove --sync 720 735 click 1; sleep 1;
xdotool mousemove --sync 1180 355 click 1; sleep 1;

xdotool mousemove --sync 1140 385 click 1; sleep 1;

xdotool mousemove --sync 720 735 click 1; sleep 1;
xdotool mousemove --sync 1180 355 click 1; sleep 1;

select_feeder 2;

# ===== feed bowl =====
feed_bowl 1 5 10;

feed_bowl 2 5 10;

feed_bowl 3 5 20;

feed_bowl 4 5 20;

feed_bowl 5 5 25;

# rare fish
xdotool mousemove --sync 915 275 click 1; sleep 1;
xdotool mousemove --sync 850 350 click 1; sleep 1;
xdotool mousemove --sync 555 500 click 1; sleep 1;
xdotool mousemove --sync 900 425 click 1; sleep 1;
xdotool mousemove --sync 750 700 click 1; sleep 1;
xdotool mousemove --sync 750 700 click 1; sleep 1;
xdotool mousemove --sync 750 700 click 1; sleep 1;

# end
xdotool key ctrl+w;

