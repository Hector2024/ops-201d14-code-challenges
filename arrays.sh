#!/bin/bash

# Script Name:                  arrays
# Author:                       Hector Cordova
# Date of latest revision:      10/26/2023
# Purpose:                      making folders
#Execution                      bash ./arrays.sh 


# Declaration of variables

dir=("dir1" "dir2"  "dir3"  "dir4")

files=("dir1/file1.txt"  "dir2/file2.txt"  "dir3/file3.txt"  "dir4/file4.txt")


# Declaration of functions

create_directories_and_files() {

for d in "${dir[@]}"; do
mkdir -p "$d"
done

for f in "${files[@]}"; do
touch "$f" 
done

}
# Main

create_directories_and_files


# End