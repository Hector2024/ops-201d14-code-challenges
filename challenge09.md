

# Gets the last 24

Get-WinEvent -LogName "System" -StartTime (Get-Date).AddHours(-24) | Format-Table -AutoSize

# Gets the last 24 and puts a file on the desk top

Get-WinEvent -LogName "System" -StartTime (Get-Date).AddHours(-24) | Format-Table -AutoSize | Out-File "$env:USERPROFILE\Desktop\SystemEventsLast24Hours.txt"

# Out puts error on to a file on the desktop

Get-WinEvent -LogName "System" | Where-Object {$_.LevelDisplayName -eq "Error"} | Format-Table -AutoSize | Out-File "$env:USERPROFILE\Desktop\errors.txt"

# Displays ID 16 on screen

Get-WinEvent -LogName "System" | Where-Object {$_.Id -eq 16} | Format-Table -AutoSize

# Gets the last 20 entries

Get-WinEvent -LogName "System" -MaxEvents 20 | Format-Table -AutoSize


# Gets last 500 events

Get-WinEvent -LogName "System" -MaxEvents 500 | Format-Table -AutoSize


## Resources
https://chat.openai.com/share/b8d8b989-7769-4cc0-bc80-2ec56a4b84ec

(I spetn 45min trying to figure out how to string all the commands together using the pipe and the commands. Then i went to chatGPT and got help/anwsers)

