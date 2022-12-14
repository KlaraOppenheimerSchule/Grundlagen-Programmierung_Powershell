$summeAlter=0

for($i=1; $i -lt 5; $i++)
{
    [int]$alter=read-host "Bitte gebe dein Alter ein"
    $summeAlter=$summeAlter+$alter
}

$durchschnittsAlter=$summeAlter/4
write-host "Das Durchschnittsalter beträgt: $durchschnittsAlter"

#Alternativ mit einer While-Schleife
$summeAlter=0
$zaehler=1
while($zaehler -lt 5)
{
    [int]$alter=read-host "Bitte gebe dein Alter ein"
    $summeAlter=$summeAlter+$alter
    $zaehler=$zaehler+1
}
$durchschnittsAlter=$summeAlter/4
write-host "Das Durchschnittsalter beträgt: $durchschnittsAlter"
