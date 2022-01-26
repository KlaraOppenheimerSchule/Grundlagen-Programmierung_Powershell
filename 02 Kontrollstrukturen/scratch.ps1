write-host "Das ist ein kleins Spiel... der Computer generiert eine Zahl zwischen 1 & 10 und du musst diese in drei Versuchen erraten. Dir wird angegeben, ob deine Zahl kleiner, größer oder gleich der generierten Zahl ist. Viel Spaß!"
write-host "Bitte eine Zahl zwischen 1 & 10 eingeben!"
$zufallsZahl = Get-Random -Minimum 1 -Maximum 10

$timer = 3

[int]$nutzerZahl = Read-Host "Tippzahl"


#if(($nutzerZahl -lt 1) -or ($nutzerZahl -gt 10))
#if($nutzerZahl -lt 0)
#{
    #write-host "Bitte eine Zahl ZWISCHEN 1 & 10 eingeben!"
#}

#else
#{
    #FEHLER nicht $timer = 0, wenn dann überhaupt $timer -eq 0, müsste jedoch not equal als -ne sein
    while ($timer -ne 0)
    {
        if($nutzerZahl -eq $zufallsZahl)
        {
            write-host "Du hast richtig geraten, und somit auch gewonnen mit $timer Versuch(en)!"
            # Neu: Damit die Schleife bei richtigen Treffer nicht erneut durchlaufen wird
            $timer=0
        }

        if($nutzerZahl -lt $zufallsZahl)
        {
            write-host "Die gesuchte Zahl ist kleiner als $nutzerZahl. Du hast noch $timer Versuche."
            $nutzerZahl = read-host
            $timer = $timer -1
        }

        if($nuterZahl -gt $zufallsZahl)
        {
            write-host "Die gesuchte Zahl ist groeßer als $nutzerZahl. Du hast noch $timer Versuche."
            $nutzerZahl = read-host
            $timer = $timer -1
        }
    }
#}
