function Multiplikation($zahl1,$zahl2, $zahl3) {
    $ergebnis = $zahl1 * $zahl2 * $zahl3
    return $ergebnis
}
 
[int] $zahl1 = Read-Host "Zahl 1"
[int] $zahl2 = Read-Host "Zahl 2"
[int] $zahl3 = Read-Host "Zahl 3"
 
$ergebnis=Multiplikation $zahl1 $zahl2 $zahl3

Write-Host $ergebnis