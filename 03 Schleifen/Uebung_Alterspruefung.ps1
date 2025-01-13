$inp=0

while($inp -le 18)
{
    [int]$inp=read-host "Zahl bis 18"
}

write-host "Jay"


#### Obiges Beispiel mit einer Do-While-Schleife
$inp=0

do
{
    [int]$inp=read-host "Zahl:"

}while($inp -le 18)

write-host "Ray"