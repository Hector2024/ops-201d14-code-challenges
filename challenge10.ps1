# 1. 
Get-Process | Sort-Object -Property CPU -Descending | Format-Table -AutoSize

# 2.
Get-Process | Sort-Object -Property Id | Format-Table -AutoSize

# 3. 
Get-Process | Sort-Object -Property WS -Descending | Select-Object -First 5 | Format-Table -AutoSize

# 4. 
Start-Process -FilePath "chrome.exe" -ArgumentList "https://owasp.org/www-project-top-ten/"
# Use "msedge.exe" for Microsoft Edge

# 5.
1..10 | ForEach-Object {
    Start-Process -FilePath "notepad.exe"
}

# 6. 
Get-Process | Where-Object { $_.Name -eq "notepad" } | ForEach-Object {
    $_.CloseMainWindow()
}

# 7. 
Stop-Process -Id 1234

