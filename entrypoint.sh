#!/bin/bash
sh ./clean_mem.sh ;
nohup gunicorn keep_alive:app --bind 0.0.0.0:8080 &
python3 main.py --everyday --visible --virtual-display;
