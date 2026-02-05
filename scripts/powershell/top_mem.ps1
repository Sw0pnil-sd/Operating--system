# PowerShell script for Task 2: Top 5 memory-consuming processes

Write-Host "Top 5 memory-consuming processes:"

Get-Process |
Sort-Object -Property WS -Descending |   # WS = Working Set (memory in bytes)
Select-Object -First 5 -Property Name, Id, @{Name="MemoryMB";Expression={[math]::Round($_.WS/1MB,2)}} |
Format-Table -AutoSize
