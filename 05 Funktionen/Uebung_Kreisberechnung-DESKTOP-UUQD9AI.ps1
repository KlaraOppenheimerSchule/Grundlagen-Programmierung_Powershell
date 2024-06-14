function kreisBerechnen($zahl) {
    #$ergebnis = $zahl*$zahl*3.1456
    $ergebnis = $zahl*$zahl*[Math]::PI
    return $ergebnis
}
 
[int] $zahl = Read-Host "Radius"

$ergebnis=kreisBerechnen $zahl

Write-Host $ergebnis