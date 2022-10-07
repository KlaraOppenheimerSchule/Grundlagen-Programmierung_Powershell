<#
#Aufgabe 1
$vorname=Read-Host
$nachname=Read-Host
write-host $vorname $nachname 

#Aufgabe 2
[int]$nutzer1=Read-Host
[int]$nutzer2=Read-Host
[int]$nutzer3=Read-Host
$ergebnis = ($nutzer1 * $nutzer2 * $nutzer3)
write-host $ergebnis
#>