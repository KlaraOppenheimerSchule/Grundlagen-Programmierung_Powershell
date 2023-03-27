function Zinsen ($Kapital, $Zinssatz, $Zinstage)
{
    #$formel = ($Kapital * $Zinssatz * $Zinstage)/(100*360)

    $formel = ($Kapital * $Zinssatz * $Zinstage)/(100*360)
    return $formel
}

[double]$Kapital = Read-Host "Kapital eingeben"
[double]$Zinssatz = Read-Host "Zinssatz eingeben"
[double]$Zinstage = Read-Host "Zinstage eingeben"

$erg = Zinsen $Kapital $Zinssatz $Zinstage
write-host $erg