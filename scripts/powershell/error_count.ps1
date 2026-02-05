# PowerShell script for Task 3: Count "Error" lines in server.log

$LogFile = "server.log"

if (-not (Test-Path $LogFile)) {
    Write-Host "server.log not found!"
    exit 1
}

# Count lines containing "Error"
$Count = (Select-String -Path $LogFile -Pattern "Error").Count
Write-Host "Number of lines containing 'Error': $Count"
