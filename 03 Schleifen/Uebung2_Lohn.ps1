$summe=0
$lohn=1
$tage=0
while($summe -le 40000)
{
    $summe=$summe+$lohn
    $lohn=$lohn*2 
    $tage=$tage+1
}
write-host "Anzahl Tage $tage für Lohn: $summe"