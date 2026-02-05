# PowerShell script for Task 5: System Health Snapshot

Write-Host "===== System Health Snapshot ====="

# Date & Time
Write-Host "Date & Time  : $(Get-Date)"

# Hostname
Write-Host "Hostname     : $env:COMPUTERNAME"

# Current User
Write-Host "Current User : $env:USERNAME"

# Disk Usage
Write-Host "Disk Usage   :"
$drive = Get-PSDrive -Name C  # Use C: for Windows, / for Linux/Mac
if (-not $drive) {
    $drive = Get-PSDrive -Name /  # fallback for Mac/Linux
}
$used = [math]::Round(($drive.Used / 1GB),2)
$free = [math]::Round(($drive.Free / 1GB),2)
$total = [math]::Round(($drive.Used + $drive.Free)/1GB,2)
Write-Host "  Used: $used GB, Free: $free GB, Total: $total GB"

Write-Host "=================================="
