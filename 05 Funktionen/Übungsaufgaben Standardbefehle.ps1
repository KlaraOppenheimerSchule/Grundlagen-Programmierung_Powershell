<#
#1
Get-ChildItem

#2
$pi=[Math]::PI
write-host $pi

#3
$date=get-date
write-host $date

#4
Get-Random -min 0 -max 101

#5
$zahlen=1,4,8,12

#Kurzversion
$zahlen | measure-object -Average

#Langversion
$summe=0
foreach($xy in $zahlen)
{
    $summe=$summe + $element
}

write-host ($summe/$zahlen.Count)

$wert=[Math]::Round(2.333)
write-host $wert

#6
Get-ChildItem
#>
#7
Get-ChildItem | Export-Csv -Path .\Dateien.csv -Delimiter ';'
Get-Content -Path .\Dateien.csv