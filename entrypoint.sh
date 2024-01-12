#!/bin/bash
sh ./clean_mem.sh ;
exec gunicorn keep_alive:app --bind 0.0.0.0:8080 &
Xvfb :99 -screen 0 1280x800x8 -nolisten tcp &
python3 main.py --everyday --visible;
