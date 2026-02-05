# PowerShell script to rename all .txt files by adding OLD_ prefix

Get-ChildItem -Filter *.txt | ForEach-Object {
    Rename-Item $_ -NewName ("OLD_" + $_.Name)
}

Write-Host "All .txt files have been renamed with OLD_ prefix."

