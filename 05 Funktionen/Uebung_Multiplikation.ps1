function Multiplikation($tzahl1,$tzahl2, $tzahl3) {
    $ergebnis = $tzahl1 * $tzahl2 * $tzahl3

    return $ergebnis
}
 
[int] $zahl1 = Read-Host "Zahl 1"
[int] $zahl2 = Read-Host "Zahl 2"
[int] $zahl3 = Read-Host "Zahl 3"
 
$ergebnis=Multiplikation $zahl1 $zahl2 $zahl3

Write-Host $ergebnis    
if($ergebnis -gt 100)
{
    write-host "Wow - grosse Zahl"
}