function zinsBerechnung ($kapital, $zinssatz, $zinstage)
{
    $zinsen = ($kapital * $zinssatz * $zinstage)/(100*360)
    return $zinsen
}

[double]$kapital = Read-Host "Kapital eingeben"
[double]$zinssatz = Read-Host "Zinssatz eingeben"
[double]$zinstage = Read-Host "Zinstage eingeben"

$erg = zinsBerechnung $kapital $zinssatz $zinstage
write-host $erg