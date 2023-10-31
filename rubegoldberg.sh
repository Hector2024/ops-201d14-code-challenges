#!/bin/bash

# Script Name:                  rubegoldberg.sh
# Author:                       Hector Cordova
# Date of latest revision:      10/27/2023
# Purpose:                      ask for PID, accept PID, die
# Exexcute command:             bash ./rubegoldberg.sh

# Declaration of variables

# Declaration of functions


 


# Basic while loop

kill_process(){
    while :
    do
      ps aux
      read -p "enter PID: " process_id
      kill -9 $process_id
    done 
}


# Main

kill_process

# End