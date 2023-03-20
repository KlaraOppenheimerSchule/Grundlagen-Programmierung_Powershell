<#
function SayHello($Name, $Vorname, $Alter = 29    ){
    Write-Host "Hello $Name $Vorname $Alter ist zur klein"
}

SayHello -vorname "Kurt" -nachname "Steinam" 
#>


function addNumber($zahl1, $zahl2)
{
    $ergebnis=$zahl1+$zahl2
    write-host $ergebnis
}

addNumber 10 5
addNumber 4 5
addNumber 2232332 232323

#Zwei Zahlen voneinander abziehen, Funktion soll subNumber heißen



