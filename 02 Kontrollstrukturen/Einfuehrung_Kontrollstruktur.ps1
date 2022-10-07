[int] $eingegebeneZahl = Read-Host "Bitte geben Sie eine Zahl ein, die positiv ist"
 
if($eingegebeneZahl -gt 0)
{
    write-host "Die Zahl ist größer null. $eingegebeneZahl"
}
else
{
    if($eingegebeneZahl -eq 0)
    {
        write-host "Sie haben 0 eingetragen"
    }
    else 
    {
        write-host "Die Zahl ist kleiner null. $eingegebeneZahl"
    }
}
