- This line prevents the sccript cmd from being displayed pn the console

@echo off

- This line enables variable expanssion which means you can use both "set /p" cmds without having to manually add more code to make them both usable at the same time.

setlocal enabledelayedexpansion

-  This line prompts the user to enter the destination folder path and assigns the input to the destinationPath variable.

set /p sourcePath=Enter the source folder path:

- This line does the same as the previous line but assigns the input to "destination path."

set /p destinationPath=Enter the destination folder path:

- This line checks if the the folder path exists 

if not exist "!sourcePath!\" (

- This line will make the computer say "Source folder does not exist"

    echo Error: Source folder does not exist.

- This line is used to make the code exit, goto transfers control to eof which exits the script.

    goto :eof
)

- This line checks if the destination path exists

if not exist "!destinationPath!\" (

- This will display the message "Destination folder does not exist."

    echo Error: Destination folder does not exist.

- This line is used to make the code exit, goto transfers control to eof which exits the script.

    goto :eof
)

- This line uses "robocopy" to copy files and directories from the source path, /E tells it to copy ALL the subdirectories.

robocopy "!sourcePath!" "!destinationPath!" /E

- This tells the computer that if the robo copy comes back with an erro 8 or higher

if errorlevel 8 (

- This line tells the computer to say "ROBOCOPY encountered errors during the copy operation."

    echo Error: ROBOCOPY encountered errors during the copy operation.

- This says if not error level 8 or higher to do the next line

) else (

- This tells the computer to say "Copy operation completed successfully."

    echo Copy operation completed successfully.
)

- This line is used to end the script

:end

- This line is used to end the local ssope established by "setlocal"

endlocal