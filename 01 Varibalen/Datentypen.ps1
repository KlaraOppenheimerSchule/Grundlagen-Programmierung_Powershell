cls
$ausgabetext = "Hallo Welt"
$ausgabetext.GetType().Name
write-host $ausgabetext

<##>
write-host "------------------"

$ausgabetext=3.2
$ausgabetext.GetType().Name
write-host $ausgabetext

write-host "------------------"

#Aufgabe Ganzzahl= 42 speichern, Typ ermitteln und Inhalt der Variablen ausgeben
$ausgabetextNeu=42
$ausgabetextNeu.GetType().Name
write-host $ausgabetextNeu