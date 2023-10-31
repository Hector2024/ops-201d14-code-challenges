#!/bin/bash

# Script Name:                  conditionals.sh
# Author:                       Hector Cordova
# Date of latest revision:      10/30/2023
# Purpose:                      Detects files
# Exexcute command:             bash ./conditionals.sh

# Declaration of variables
files=("file1.txt" "file2.txt" "file3.txt" "file4.txt")
# Declaration of functions
 does_file_exist() { 
   local search_file="$1"
  for file in "${files[@]}"; do 
    if ["$file" == "$search_file"]; then
      return 0 
    fi
  done
  return 1 
}

# Main

for file in "${files[@]}"; do
  if ! does_file_exist "$file"; then
    echo "File $file does not exist. Do you want to create it? (yes/no)"
    read answer
    if [ "$answer" == "yes" ]; then
      touch "$file"
      echo "File $file has been created."
    
    elif [ "$answer" == "no" ]; then
      echo "File $file was not created."
    break
    fi
  fi
done


# End