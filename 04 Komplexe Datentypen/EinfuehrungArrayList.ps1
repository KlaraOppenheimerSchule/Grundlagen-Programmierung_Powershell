#2a
$freundesListe = New-Object System.Collections.ArrayList

[void]$freundesListe.Add("Klaus")
[void]$freundesListe.Add("Fred")
[void]$freundesListe.Add("Helmut")

write-host $freundesListe

#2b
$freundesListe.RemoveAt(2)
write-host $freundesListe

#2c
$freundesListe.add("Uschi")
write-host $freundesListe

#2d
$freundesListe.add((read-host "Neuen Freund"))
$freundesListe.add((read-host "Neuen Freund"))

#2f - Hausaufgabe
