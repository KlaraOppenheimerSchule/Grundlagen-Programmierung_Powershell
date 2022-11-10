[int]$stundenlohn=read-host "Stundenlohn:"
[int]$arbeitsStunden=read-host "Arbeitsstunden:"

#Prüfen, ob der Stundenlohn mindestens 12 Euro entspricht
#Und den Nutzer zwingen, mindesten 12 Euro einzugeben.
#While-Schleife:    Solange der eingegebene Wert Stundenlohn niedrieger als 12 ist,
#                   wiederholt sich die Schleife bis halt mindestens 12
while($stundenlohn -lt 12)
{
    write-host "Bitte neuen Wert eingeben, Wert war zu klein"
    $stundenlohn=read-host "Stundenlohn:"
}

#Berechnung
$gesamtlohn=$stundenlohn*$arbeitsStunden

#Finanzamtprüfung
#Wenn der Gesamtlohn größer als 1000 ist, wird ausgegeben...
if($gesamtlohn -gt 1000)
{
    write-host "Bitte Einkommen beim Finanzamt melden"
}

write-host "Ihr genauer Gesamtlohn beträgt: $gesamtlohn"



