#2a
$freundesListe = New-Object System.Collections.ArrayList

$freundesListe.Add("Klaus") | out-null
$freundesListe.Add("Fred")
$freundesListe.Add("Helmut")

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

#2f
$vorhanden=$freundesListe.Contains((read-host "Gesuchter Freund"))
if($vorhanden -eq $true)
{
    write-host "Dieser Freund ist vorhanden"
}
else 
{
    write-host "Dieser Freund ist NICHT vorhanden"
}