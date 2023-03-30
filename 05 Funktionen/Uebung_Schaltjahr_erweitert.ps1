#Funktion definieren, zum Berechnen, ob ein Schaltjahr vorliegt. Erwartet einen Parameter als Übergabewert
function checkLeapYear($year)
{
    #Prüft, ob das Jahr durch 400 teilbar ist. Sofern ja, wird gleich $true zurückgegeben
    if($year % 400 -eq 0)
    {
        return $true
    }
    #Prüft ansonsten, ob durch 4 teilbar und nicht durch 100 teilbar ist
    elseif (($year % 4 -eq 0) -and ($year % 100 -ne 0))
    {
        return $true
    }
    #Sonst liegt kein Schaltjahr vor
    else 
    {
        return $false
    }
}

#Erstellen mal ein Array mit Jahreszahlen
$jahreszahlen=1, 2, 400, 1986, 1989, 2000, 2002, 2023, 2200

foreach($jahreszahl in $jahreszahlen)
{
    $result=checkLeapYear $jahreszahl
    #Nutzer über das Vorliegen eines Schaltjahres informieren
    if ($result)
    {
        write-host "Es liegt ein Schaltjahr vor: $jahreszahl"
    }
    else 
    {
        write-host "Es liegt kein Schaltjahr vor: $jahreszahl"
    }
}



