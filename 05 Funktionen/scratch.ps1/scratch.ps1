<#
function SayHello($Name, $Vorname, $Alter = 29    ){
    Write-Host "Hello $Name $Vorname $Alter ist zur klein"
}

SayHello -vorname "Kurt" -nachname "Steinam" 
#>


function addNumber($zahl1, $zahl2)
{
    $ergebnis=$zahl1+$zahl2
    #write-host $ergebnis
    #Das Ergbnis an den Aufrufer zurückgeben
    return $ergebnis
}

$rueckgabeErgebnis=addNumber 10 5
write-host $rueckgabeErgebnis



