<#
$zuUeberpruefendeZahl=7

function ist_primzahl($zahl)
{
    # Noch zu programmieren
    return $true
}

$ergebnis= ist_primzahl $zuUeberpruefendeZahl
if($ergebnis -eq $true)
{
    write-host "Die Zahl $zuUeberpruefendeZahl ist eine Primzahl"
}
else 
{
    write-host "Die Zahl $zuUeberpruefendeZahl ist keine Primzahl"
}

#>





<#
$zuUeberpruefendeZahl=7

function ist_primzahl($zahl)
{
    $primzahl=$true
    # Noch zu programmieren
    if($zahl % 2 -eq 0)
    {
        $primzahl=$false
    }
    return $primzahl
}

$ergebnis= ist_primzahl $zuUeberpruefendeZahl
if($ergebnis -eq $true)
{
    write-host "Die Zahl $zuUeberpruefendeZahl ist eine Primzahl"
}
else 
{
    write-host "Die Zahl $zuUeberpruefendeZahl ist keine Primzahl"
}
#>


#Die zu überprüfende Zahl in der Variable
$zuUeberpruefendeZahl=89

#Die Funktion, die überprüft, ob es eine Primzahl ist
function ist_primzahl($zahl)
{
    $primzahl=$true
    #Prüfe, ob die übergebene Zahl durch 2 teilbar ist (ohne Rest) und dies machen wir für alle 
    #Zahlen von 2 bis n-1
    for($i=2; $i -lt $zahl; $i=$i+1)
    {
        if($zahl % $i -eq 0)
        {
            $primzahl=$false
        }
    }
   
    return $primzahl
}

#Aufruf der Funktion ist_primzahl, Übergabe der zu überprüfenden Zahl und speichern des Ergebnisses in der 
# Variable $ergebnis
$ergebnis= ist_primzahl $zuUeberpruefendeZahl

#Wenn das Ergebnis true ist, liegt eine Primzahl vor, andernfalls nicht
if($ergebnis -eq $true)
{
    write-host "Die Zahl $zuUeberpruefendeZahl ist eine Primzahl"
}
else 
{
    write-host "Die Zahl $zuUeberpruefendeZahl ist keine Primzahl"
}