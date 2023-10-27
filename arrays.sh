#!/bin/bash

# Script Name:                  arrays
# Author:                       Hector Cordova
# Date of latest revision:      10/26/2023
# Purpose:                      making folders
#Execution                      bash ./arrays.sh 


# Declaration of variables

chicken=("dir1" "dir2" "dir3" "dir4")

eggs=("dir1/file1.txt" "dir2/file2.txt" "dir3/file.txt" "dir4/file4.txt")


# Declaration of functions

arrays(){


for c in "$chicken[@]"; do
mkdir -p "$c"

for e in "$eggs[@]"; do
touch "$e"

}

# Main

arrays

# End