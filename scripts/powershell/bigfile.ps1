param (
    [string]$FileName
)
$MaxSize = 1048576
if (-not $FileName) {
    Write-Host "Usage: .\bigfile.ps1 <filename>"
    exit 1
}
if (-not (Test-Path $FileName)) {
    Write-Host "Error: File does not exist."
    exit 1
}
$FileSize = (Get-Item $FileName).Length
if ($FileSize -gt $MaxSize) {
    Write-Host "Warning: File is too large"
} else {
    Write-Host "File size is within limits"
}
