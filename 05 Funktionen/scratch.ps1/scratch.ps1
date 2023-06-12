function addNumber($zahl1, $zahl2)
{
    $ergebnis=$zahl1+$zahl2
 
    #Das Ergbnis an den Aufrufer zurückgeben
    return $ergebnis
}

$rueckgabeErgebnis=addNumber 10 5
write-host $rueckgabeErgebnis

$rueckgabeErgebnis=addNumber 12432345 52435432
write-host $rueckgabeErgebnis

$rueckgabeErgebnis=addNumber 2435324510 234552432345
write-host $rueckgabeErgebnis


