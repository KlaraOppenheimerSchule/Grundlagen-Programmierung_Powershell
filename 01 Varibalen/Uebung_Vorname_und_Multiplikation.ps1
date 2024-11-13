#Aufgabe 2
$vorname=Read-Host
$nachname=Read-Host
write-host $vorname $nachname 

#Aufgabe 3
[int]$nutzer1=Read-Host "Zahl1 eingeben"
[int]$nutzer2=Read-Host "Zahl2 eingeben"
[int]$nutzer3=Read-Host "Zahl3 eingeben"

$ergebnis = ($nutzer1 * $nutzer2 * $nutzer3)
write-host $ergebnis

