[int]$eingelesenZahl=Read-Host "Bitte geben Sie eine Zahl ein, die positiv ist!"

if($eingelesenZahl -gt 0)
{
    write-host "Die Zahl ist größer null. Super gemacht! $eingeleseneZahl"
}
else 
{
    if($eingelesenZahl -eq 0)
    {
        write-host "Sie haben 0 eingegeben"    
    }
    else 
    {
        write-host "Die Zahl ist kleiner null! $eingeleseneZahl"    
    }
}
    