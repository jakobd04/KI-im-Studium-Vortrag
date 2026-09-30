#!/bin/sh
python3 -m http.server 8000 &
python3 -m webbrowser localhost:8000
