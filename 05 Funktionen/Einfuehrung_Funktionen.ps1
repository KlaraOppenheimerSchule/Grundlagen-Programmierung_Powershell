[int]$zahl1= read-host "Zahl1 eingeben"
[int]$zahl2= read-host "Zahl1 eingeben"

function zahlenAddieren($lzahl1, $lzahl2)
{
    $ergebnis=$lzahl1+$lzahl2

    #Rückgabe des Ergebnisses an den Aufrufer
    return $ergebnis
}


$berechnetesErgebnis=zahlenAddieren $zahl1 $zahl2



if($berechnetesErgebnis -gt 10)
{
    write-host "$berechnetesErgebnis ist größer als 10"
}
