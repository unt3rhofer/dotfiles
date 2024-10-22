#!/bin/bash

# Name of the external display and laptop display
EXTERNAL_OUTPUT="DP-3"
INTERNAL_OUTPUT="eDP-1"

# Function to check if the external display is disconnected
check_external_display_disconnected() {
    xrandr | grep "$EXTERNAL_OUTPUT disconnected"
}

# Main loop to monitor display status
while true; do
    if check_external_display_disconnected; then
        # If the external display is disconnected, turn the internal display back on
        xrandr --noprimary
        xrandr --output "$INTERNAL_OUTPUT" --auto
        break
    fi
    # Sleep for 5 seconds before checking again
    sleep 2
done

