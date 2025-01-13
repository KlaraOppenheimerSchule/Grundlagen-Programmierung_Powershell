#Ein Element pro Variable
$vorname= read-host "Name:"
write-host $vorname

#Wenn ich mehrere Elemente eingeben will, benötige ich einen komplexen Datentyp
$vornamen = New-Object System.Collections.ArrayList

#Befüllen der Arrayliste
$vornamen.add("Franz")
$vornamen.add("Peter")
$vornamen.add("Petra")

#Inhalt der Arrayliste ausgeben
foreach($einzelnerVorname in $vornamen)
{
    write-host $einzelnerVorname
}


