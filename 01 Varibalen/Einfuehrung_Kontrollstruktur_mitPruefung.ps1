[int] $zahl = Read-Host 

#Problem: Was machen wir, wenn der Nutzer die Zahl 0 eingibt
#Ziel: Optimieren Sie das Problem

if($zahl -gt 0)
{
    write-host "Die Zahl ist grösser 0"
}
elseif($zahl -eq 0)
{
    write-host "Bitte geben Sie eine Zahl ein, die nicht die Zahl 0 ist."
}
else 
{
    write-host "Die Zahl ist kleiner 0"    
}