#!/bin/bash

# Initialize counter
counter=0

# Fetch workspace names from i3 and generate Polybar configuration
i3-msg -t get_workspaces | tr ',' '\n' | sed -nr 's/"name":"([^"]+)"/\1/p' | while read -r name; do
  # Strip the first character from the workspace name
  stripped_name=$(echo "$name" | cut -c2-)

  # Print the configuration line
  printf 'ws-icon-%i = "%s;<insert-icon-here>"\n' $((counter++)) "$stripped_name"
done

