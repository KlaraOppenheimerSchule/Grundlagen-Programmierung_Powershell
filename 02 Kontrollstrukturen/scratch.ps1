[int]$eingelesenZahl=Read-Host "Bitte geben Sie eine Zahl ein, die positiv ist!"

if($eingelesenZahl -gt 0)
{
    write-host "Zahl ist größer null"
}
else 
{
    Write-Host "Zahl ist kleiner null"
}
Set-ExecutionPolicy -ExecutionPolicy Unrestricted