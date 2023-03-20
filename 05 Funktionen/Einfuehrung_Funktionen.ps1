function addNumber($zahl1, $zahl2)
{
    $ergebnis=$zahl1+$zahl2
    write-host $ergebnis
}

#Funktionsaufruf
addNumber 10 5
addNumber 134230 5234
addNumber 12342340 5234234




























#Funktion, die das Ergebnis an den Aufrufer zurückgibt
<#
function addNumber($zahl1, $zahl2)
{
    $ergebnis=$zahl1+$zahl2
    #write-host $ergebnis
    #Das Ergbnis an den Aufrufer zurückgeben
    return $ergebnis
}
$rueckgabeErgebnis=addNumber 10 5
write-host $rueckgabeErgebnis
#>