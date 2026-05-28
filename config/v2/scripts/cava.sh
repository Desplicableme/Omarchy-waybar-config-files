#!/bin/bash

# 1. Guarantee the directory exists
mkdir -p "$HOME/.config/cava"

# 2. Dynamically build the config file with PIPEWIRE explicitly defined
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

# 3. Define the gradient of block characters
bar=" ▂▃▄▅▆▇█"
dict="s/;//g;"
i=0
while [ $i -lt ${#bar} ]; do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i+1))
done

# 4. Job control to cleanly kill Cava when music stops
set -m 
cleanup() {
    if [ -n "$CAVA_PID" ]; then
        kill -TERM "-$CAVA_PID" 2>/dev/null
    fi
    exit 0
}
trap cleanup SIGINT SIGTERM EXIT

# 5. The Heartbeat Loop
while true; do
    # Check if any media is playing using playerctl
    STATUS=$(playerctl status 2>/dev/null)
    
    if [ "$STATUS" = "Playing" ]; then
        # Fire up the engine in its own process group
        (cava -p "$HOME/.config/cava/waybar_config" | sed -un "$dict;p") &
        CAVA_PID=$!
        
        # Let it burn while music plays (checks every 1 second)
        while [ "$(playerctl status 2>/dev/null)" = "Playing" ]; do
            sleep 1
        done
        
        # Music stopped, kill the engine smoothly
        kill -TERM "-$CAVA_PID" 2>/dev/null
        wait $CAVA_PID 2>/dev/null
        CAVA_PID=""
    else
        # 6. The Pacing Cat Animation
        # A sleek Nerd Font cat wandering through aesthetic dust
        frames=(
            " 󰄛 ‧₊˚ "
            " ‧ 󰄛 ₊˚ "
            " ‧₊ 󰄛 ˚ "
            " ‧₊˚ 󰄛 "
            " ‧₊ 󰄛 ˚ "
            " ‧ 󰄛 ₊˚ "
        )
        for frame in "${frames[@]}"; do
            echo "$frame"
            sleep 0.5
            # Instantly break the animation and wake up the visualizer if music starts
            if [ "$(playerctl status 2>/dev/null)" = "Playing" ]; then
                break
            fi
        done
    fi
done
