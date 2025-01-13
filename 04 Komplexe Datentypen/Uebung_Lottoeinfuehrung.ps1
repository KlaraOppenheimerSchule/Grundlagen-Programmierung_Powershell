$arrayEingabezahlen = New-Object System.Collections.ArrayList
$arrayZufallszahlen = New-Object System.Collections.ArrayList

for ($i = 0 ; $i -lt 6 ; $i++){                                         #Schleife für Zahleneingabe

    [int]$eingabezahl = Read-Host "Bitte die $($i+1). Zahl eingeben"     
    if($eingabezahl -gt 0 -and $eingabezahl -lt 25){                    #Eingabebereich 1-24 festlegen

        if($arrayEingabezahlen.Contains($eingabezahl)){                 #Abfrage, ob die Zahl bereits eingegeben wurde
            Write-Host "Diese Zahl wurde bereits eingegeben, bitte eine andere Zahl wählen"
            $i--
        }
        else{
            $arrayEingabezahlen.add($eingabezahl)                       #Array Eintrag
        }
    }
    else{
        Write-Host "Ungültige Zahl, bitte erneute Eingabe der $($i + 1). Zahl"
        $i--
    }
}

for ($i = 0 ; $i -lt 6 ; $i++){                        #Schleife für die Generierung der Zufallszahlen 

    $zufallszahl = Get-Random -Minimum 1 -Maximum 25

    if($arrayZufallszahlen.Contains($zufallszahl)){    #Abfrage, ob die Zahl bereits im Array vorhanden ist
        $i--
    }
    else{
        $arrayZufallszahlen.add($zufallszahl)
    }
}

Write-Host "Eingegebene Zahlen: $arrayEingabezahlen"
Write-Host "Die Gewinnzahlen: $arrayZufallszahlen"

$treffer = 0

for ($i = 0 ; $i -lt $arrayEingabezahlen.Count ; $i++){

    if($arrayZufallszahlen.Contains($arrayEingabezahlen[$i])){
        $treffer++
    }

}
Write-Host "Du hast $treffer Zahlen richtig getippt"



$treffer2 = 0

for ($i = 0 ; $i -lt $arrayEingabezahlen.Count ; $i++){

    for ($k = 0 ; $k -lt $arrayZufallszahlen.Count ; $k++){

        if($arrayZufallszahlen[$k] -eq $arrayEingabezahlen[$i]){
            $treffer2++
        }
    }
}

Write-Host "Ergebnis Kontrollschleife: $treffer2"