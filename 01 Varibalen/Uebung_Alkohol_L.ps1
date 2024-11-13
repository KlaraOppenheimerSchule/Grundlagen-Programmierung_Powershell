[float]$Laenge=read-host("Bitte Länge in Metern eingeben ")
[float]$Mitteldruchmesser=read-host("Bitte den Mitteldurchmesser in Zentimeter eingeben")


#$Volumen = (([math]::pi / 4 ) * $Mitteldruchmesser*$Mitteldruchmesser)*$Laenge/10000
$Volumen = (([math]::pi / 4 ) *[math]::pow($Mitteldruchmesser,2)*$Laenge/10000)

write-host $Volumen " Festmeter" 