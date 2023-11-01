#!/bin/bash

# Script Name:                  challenge07.sh
# Author:                       Hector Cordova
# Date of latest revision:      10/31/2023
# Purpose:                      Display system info
# Exexcute command:             bash ./challenge07.sh

# Declaration of variables

# Declaration of functions

display_system_info() {
    
 sudo lshw | grep "cpu"
 sudo lshw | grep "ram"
 sudo lshw | grep "display adapter"
 sudo lshw | grep "network adapter"

}

# Main

display_system_info

# End