#!/bin/bash

mkdir -p "$HOME/.config/cava"

cat << 'EOF' > "$HOME/.config/cava/waybar_config"
[general]
framerate = 60
bars = 12

[input]
method = pipewire
source = auto

[output]
method = raw
raw_target = /dev/stdout
data_format = ascii
ascii_max_range = 7
EOF

bar=" ▂▃▄▅▆▇█"
dict="s/;//g;"
i=0
while [ $i -lt ${#bar} ]; do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i+1))
done

set -m 
cleanup() {
    if [ -n "$CAVA_PID" ]; then
        kill -TERM "-$CAVA_PID" 2>/dev/null
    fi
    exit 0
}
trap cleanup SIGINT SIGTERM EXIT

while true; do
    STATUS=$(playerctl status 2>/dev/null)
    
    if [ "$STATUS" = "Playing" ]; then
        (cava -p "$HOME/.config/cava/waybar_config" | sed -un "$dict;p") &
        CAVA_PID=$!
        
        while [ "$(playerctl status 2>/dev/null)" = "Playing" ]; do
            sleep 1
        done
        
        kill -TERM "-$CAVA_PID" 2>/dev/null
        wait $CAVA_PID 2>/dev/null
        CAVA_PID=""
    else
        # The Cute Sleeping Cat Animation
        frames=(
            " 󰄛  z    "
            " 󰄛   z   "
            " 󰄛    Z  "
            " 󰄛     z "
            " 󰄛    Z  "
            " 󰄛   z   "
        )
        for frame in "${frames[@]}"; do
            echo "$frame"
            sleep 0.4
            if [ "$(playerctl status 2>/dev/null)" = "Playing" ]; then
                break
            fi
        done
    fi
done
