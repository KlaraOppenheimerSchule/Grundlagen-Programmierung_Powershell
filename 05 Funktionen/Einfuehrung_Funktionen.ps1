
function addNumber($zahl1, $zahl2)
{
    $ergebnis=$zahl1+$zahl2
    return $ergebnis
}

#Funktionsaufruf
[int]$zahlEins=read-host
$ergebnis=addNumber $zahlEins 5
write-host $ergebnis


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