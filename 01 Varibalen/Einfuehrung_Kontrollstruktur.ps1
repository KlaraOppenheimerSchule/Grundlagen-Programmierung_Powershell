[int] $zahl = Read-Host 

#Problem: Was machen wir, wenn der Nutzer die Zahl 0 eingibt
#Ziel: Optimieren Sie das Problem

if($zahl -gt 0)
{
    write-host "Die Zahl ist grösser 0"
}
else 
{
    write-host "Die Zahl ist kleiner 0"    
}