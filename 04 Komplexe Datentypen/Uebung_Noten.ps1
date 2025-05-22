#Aufgabe: Erstellen Sie ein Notenprogramm, das schrittweise folgende Funktionen erfüllt:
#a)	Einlesen und Speichern von beliebig vielen Noten vom Nutzer, bis dieser keine mehr eingeben möchte.

$noten = New-Object System.Collections.ArrayList
$weitereNotenGewuenscht=$true
 
while($weitereNotenGewuenscht -eq $true)
{
    [int]$note= Read-Host "Gebe eine Note ein"

    [void]$noten.Add($note)
    
    $wunsch=read-host "Weitere Noten gewünscht (y/n)?"
    if($wunsch -eq "n") {
        $weitereNotenGewuenscht=$false
    }
}








#b)	Sicherstellen bei der Eingabe, dass die Noten im Bereich von 1-6 liegen.
cls
write-host "------------------------AUFGABE b----------------------"

$noten = New-Object System.Collections.ArrayList
$weitereNotenGewuenscht=$true
 
while($weitereNotenGewuenscht)
{
    [int]$note= Read-Host "Gebe eine Note ein"
    if ($note -lt 1 -or $note -gt 6) {
        Write-Host "Note zu groß oder klein"
    }
    else
    {
        [void]$noten.Add($note)
        $wunsch=read-host "Weitere Noten gewünscht (y/n)?"
        if($wunsch -eq "n") {
            $weitereNotenGewuenscht=$false
        }
    }
}
#c)	Ermittlung der schlechtesten vorhanden Noten und Ausgabe dieser.
$schlechtesteNote=0
foreach($note in $noten)
{
    if($note -gt $schlechtesteNote)
    {
        $schlechtesteNote = $note
    }
}
write-host "Die schlechteste Note ist: $schlechtesteNote"

#d)	Ermittlung der besten vorhandnen Noten und Ausgabe dieser.
#Tipp: Ganz ähnlich wie die Aufgabe b)


#e)	Berechnung und Ausgabe vom Notendurchschnitt der eingegebenen Noten.
#Tipp: Überlegen dir zuerst, wie du den Notendurchschnitt auf dem Papier berechnen würdest und übertrage das Vorgehen dann auf das Programm.

#f)	Ausgabe der Häufigkeit des Vorkommens der Note 1.
