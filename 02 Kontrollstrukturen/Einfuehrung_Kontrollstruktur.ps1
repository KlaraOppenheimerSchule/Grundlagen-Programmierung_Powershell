
[int] $eingegebeneZahl = Read-Host "Bitte geben Sie eine Zahl ein, die positiv ist"



if($eingegebeneZahl -gt 0)
{
    write-host "Die Zahl ist größer null. $eingegebeneZahl"
}
else
{
    write-host "Die Zahl ist kleiner, gleich null. $eingegebeneZahl"
}
