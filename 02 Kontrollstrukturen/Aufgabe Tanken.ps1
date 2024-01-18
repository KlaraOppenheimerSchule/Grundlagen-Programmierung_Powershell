$priceGasoline=1.90
$priceDiesel=1.80
[int]$tankVolume=read-host "Tankmenge eingeben"
[int]$tankType=read-host "Bitte Tanksorte eingeben (1=Benzin, 2= Diesel)"

$price=0
if($tankType -eq 1)
{
    $price=$priceGasoline
}
else 
{
    $price=$priceDiesel
}

if($tankVolume -ge 100)
{
    $price=$price*0.95
}

$costs=$price*$tankVolume
write-host "Der Tankvorgang kostet: $costs"
