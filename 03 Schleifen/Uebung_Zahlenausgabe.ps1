# Einfache Lösung mit Schwiergikeitsniveau auf Leistungsniveau
#   Startwert ; Bedingung; Hochzählen
<#
for($i=0; $i -le 9999; $i++)
{
    write-host $i
    if($i -eq 1000)
    {
        $break=read-host
    }
}
#>


#Erweiterte Lösung mit führenden 0-Stellen

for($stelleZaehler1=0; $stelleZaehler1 -lt 10; $stelleZaehler1++)
{
    for($stelleZaehler2=0; $stelleZaehler2 -lt 10; $stelleZaehler2++)
    {
        for($stelleZaehler3=0; $stelleZaehler3 -lt 10; $stelleZaehler3++)
        {
            for($stelleZaehler4=0; $stelleZaehler4 -lt 10; $stelleZaehler4++)
            {
                write-host "$stelleZaehler1$stelleZaehler2$stelleZaehler3$stelleZaehler4"
                [int]$wert=$stelleZaehler1+$stelleZaehler2+$stelleZaehler3+$stelleZaehler4
                if($wert -eq 1000)
                {
                    $break=read-host
                }
            }
        }
    }
}
