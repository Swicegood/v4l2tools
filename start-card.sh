#!/bin/bash

v4l2-ctl -d /dev/video1 --set-ctrl=video_gop_size=1 -p 15
v4l2-ctl -d /dev/video3 --set-ctrl=video_gop_size=1 -p 15
v4l2-ctl -d /dev/video4 --set-ctrl=video_gop_size=1 -p 15
v4l2-ctl -d /dev/video5 --set-ctrl=video_gop_size=1 -p 15
v4l2-ctl -d /dev/video7 --set-ctrl=video_gop_size=1 -p 15
v4l2-ctl -v width=704,height=480  -d /dev/video1
v4l2-ctl -v width=704,height=480  -d /dev/video3
v4l2-ctl -v width=704,height=480  -d /dev/video4
v4l2-ctl -v width=704,height=480  -d /dev/video5
v4l2-ctl -v width=704,height=480  -d /dev/video7


echo `date` " Startcard was run" `v4l2-ctl -d /dev/video7 --get-ctrl=video_gop_size` >> start_card.log
