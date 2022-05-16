#1
Get-ChildItem

#2
$pi=[Math]::PI
write-host $pi

#3
$date=get-date
write-host $date

#4
Get-Random -min 0 -max 100

#5
$zahlen=1,4,8,12
#Kurzversion
$zahlen | measure-object -Average

#Langversion
$summe=0
foreach($element in $zahlen)
{
    $summe=$summe + $element
}

write-host ($summe/$zahlen.Count)

