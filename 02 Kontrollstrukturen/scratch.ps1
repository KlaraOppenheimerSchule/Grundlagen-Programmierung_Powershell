[int]$eingelesenZahl=Read-Host "Bitte geben Sie eine Zahl ein, die positiv ist!"

if($eingelesenZahl -gt 0)
{
    write-host "Die Zahl ist größer null. Super gemacht! $eingeleseneZahl"
}
else 
{
    write-host "Die Zahl ist negativ"    
}