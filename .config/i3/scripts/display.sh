#!/bin/bash                                                                                                                                                                                                                                                    
# This script is intended to make switching between laptop and external displays easier when using i3+dmenu                                                                                                                                                    
# To run this script, map it to some shortcut in your i3 config, e.g:                                                                                                                                                                                          
# bindsym $mod+p exec --no-startup-id $config/display.sh                                                                                                                                                                                                       
# IMPORTANT: run chmod +x on the script to make it executable                                                                                                                                                                                                  
# The result is 4 options appearing in dmenu, from which you can choose                                                                                                                                                                                        
                                                                                                                                                                                                                                                               
                                                                                                                                                                                                                                                               
# This is your default laptop screen, detect by running `xrandr`                                                                                                                                                                                               
INTERNAL_OUTPUT="HDMI-1"                                                                                                                                                                                                                                       
EXTERNAL_OUTPUT="eDP-1";
xrandr --output $INTERNAL_OUTPUT --auto --output $EXTERNAL_OUTPUT --auto --same-as $INTERNAL_OUTPUT
