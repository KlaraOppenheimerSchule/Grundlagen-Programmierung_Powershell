$gesamtalter=0
$i=1

while($i -le 4)
{
    [int]$alter=read-host 

    if($alter -le 0)
    {
        write-host "Falsche Eingabe"
    }
    else 
    {
        $gesamtalter=$gesamtalter+$alter
        $i=$i+1
    }
}

$durchschnittsalter=$gesamtalter/4
write-host $durchschnittsalter