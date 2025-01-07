#Sechs Zufallszahlen vom Computer erzeugen lassen
$zufallszahlen = New-Object System.Collections.ArrayList

for($i=0; $i -lt 6; $i++)
{
    $zufallszahl = Get-Random -min 1 -max 43
    [void]$zufallszahlen.add($zufallszahl)
}

write-host $zufallszahlen

#Sechs Zahlen vom Nutzer eingeben lassen
$nutzerZahlen = New-Object System.Collections.ArrayList

for($i=0; $i -lt 6; $i++)
{
    [int]$nutzerZahl=read-host("Zahl eingeben")
    [void]$nutzerZahlen.Add($nutzerZahl)
}

#Ermitteln, wie viele Zahlen richtig erraten wurden
$gleicheZahlen = New-Object System.Collections.ArrayList

foreach($x in $nutzerZahlen)
{
    if ($zufallszahlen.Contains($x))
    {
        if($gleicheZahlen.Contains($x))
        {
            #Do nothing
        }
        else 
        {
            [void]$gleicheZahlen.Add($x)
        }
    }
}

$size=$gleicheZahlen.Count

write-host "Diese Zahlen sind gleich:"
write-host $gleicheZahlen
write-host "So viele Zahlen sind gleich $size"

