#!/bin/bash
latest=$(wl-paste 2>/dev/null)

while true; do
    new=$(wl-paste 2>/dev/null)
    
    if [ "$new" != "$latest" ]; then
        latest=$new
        cliphist delete-query "$latest" 2>/dev/null
        echo "$new" | wl-copy
    fi
done
