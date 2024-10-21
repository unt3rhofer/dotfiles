#!/bin/bash

# Name of the external display and laptop display
EXTERNAL_OUTPUT="HDMI-1"
INTERNAL_OUTPUT="eDP-1"

# Function to check if external display is connected
check_external_display() {
    xrandr | grep "$EXTERNAL_OUTPUT connected"
}

# Main loop to monitor display status
while true; do
    if check_external_display; then
        # If the external display is connected, configure it
        xrandr --output "$EXTERNAL_OUTPUT" --auto --above "$INTERNAL_OUTPUT"
        xrandr --output "$INTERNAL_OUTPUT" --off
        break
    fi
    # Sleep for 5 seconds before checking again
    sleep 2
done

