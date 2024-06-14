function quadratZahlBerechnen($zahl) {
    #$ergebnis = $zahl*$zahl
    $ergebnis=[Math]::Pow($zahl,2)
    return $ergebnis
}
 
[int] $zahl = Read-Host "Zahl"

$ergebnis=quadratZahlBerechnen $zahl

Write-Host $ergebnis