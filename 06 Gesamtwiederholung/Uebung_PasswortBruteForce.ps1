$DatenbankGepruefte = New-Object System.Collections.ArrayList
[int]$anzahl = 0
[string]$Passwort = "1234"  #4Stellen

function Passwortgenerator ([int]$Passwortlaenge) {
    $Zeichenpool = "0123456789"
    do {
        $PasswortGuessTemp = ""

        for ($i = 1; $i -le $Passwortlaenge; $i++) {
            $Wert = Get-Random -Minimum 0 -Maximum $Zeichenpool.Length
            $PasswortGuessTemp += $Zeichenpool[$Wert]
            #Write-Host "Passwortgenerierung: $PasswortGuessTemp"
        }
    } until (-Not ($DatenbankGepruefte -contains $PasswortGuessTemp))

    [void]$DatenbankGepruefte.Add($PasswortGuessTemp)
    #Write-Host "Passwort vor Rueckgabe: $PasswortGuessTemp"
    return $PasswortGuessTemp
}

function PasswortPruefen ([string]$PasswortGuess2){
    $PasswortPruefung = $false
    write-host "Gesuchtes Passwort: $PasswortGuess2 Richtiges Passwort: $passwort"
    if($PasswortGuess2 -eq $Passwort){
        $PasswortPruefung = $true
        #Write-Host "Das gesuchte Passwort war $Passwort es hat $x Versuche gebraucht"
    }

    #Write-Host "Passwort in der Funktion: $PasswortGuess2"
    return $PasswortPruefung
}

[int]$Passwortlaenge = Read-Host "Wie viele Stellen hat das Passwort?"

do {

    $PasswortGuess3 = Passwortgenerator $Passwortlaenge
    #Write-Host "Passwort nach Rueckgabe: $PasswortGuess3"
    $anzahl++
    write-host $anzahl
} until (PasswortPruefen $PasswortGuess3)