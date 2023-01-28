#Aufgabe b
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


#Aufgabe c) Erweiterung um Beuteschema von Christoph
$summeAlter=0
$zaehler=1
while($zaehler -lt 5)
{
    [int]$alter=read-host "Bitte gebe dein Alter ein"
    if($alter -gt 19 -and $alter -lt 31)
    {
        $summeAlter=$summeAlter+$alter
        $zaehler=$zaehler+1  
    }
    else 
    {
        write-host "Bist leider außerhalb meines Beuteschemas"
    }
}
$durchschnittsAlter=$summeAlter/4
write-host "Das Durchschnittsalter beträgt: $durchschnittsAlter"
#>

#Aufgabe c) mit for-Schleife
$summeAlter=0
[int]$anzahlParterinnen=read-host "Wie viele Bekanntschaften möchtest du heute haben"
for($i=1; $i -lt $anzahlParterinnen; $i++)
{
    [int]$alter=read-host "Bitte gebe dein Alter ein"
    if($alter -gt 19 -and $alter -lt 31)
    {
        $summeAlter=$summeAlter+$alter
    }
    else 
    {
        write-host "Bist leider außerhalb meines Beuteschemas"
        $i=$i-1
    }
}

$durchschnittsAlter=$summeAlter/$anzahlParterinnen
write-host "Das Durchschnittsalter beträgt: $durchschnittsAlter"


#Aufgabe d) mit for-Schleife
$summeAlter=0
[int]$anzahlParterinnen=read-host "Wie viele Bekanntschaften möchtest du heute haben"
for($i=1; $i -le $anzahlParterinnen; $i++)
{
    [int]$alter=read-host "Bitte gebe dein Alter ein"
    if($alter -gt 19 -and $alter -lt 31)
    {
        $summeAlter=$summeAlter+$alter
    }
    else 
    {
        write-host "Bist leider außerhalb meines Beuteschemas"
        $i=$i-1
    }
}

$durchschnittsAlter=$summeAlter/$anzahlParterinnen
write-host "Das Durchschnittsalter beträgt: $durchschnittsAlter"