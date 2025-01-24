#!/bin/bash

# Move all workspaces to the internal display when external monitor is disconnected
for workspace in $(i3-msg -t get_workspaces | jq -r '.[] | .name'); do
    i3-msg workspace "$workspace"; i3-msg move workspace to output eDP
done
