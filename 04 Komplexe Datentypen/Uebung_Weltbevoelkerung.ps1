$Bevoelkerung2021 = New-Object System.Collections.ArrayList
$Bevoelkerung2100 = New-Object System.Collections.ArrayList
$Kontinente = New-Object System.Collections.ArrayList

[void]$Bevoelkerung2021.add(4694.6)
[void]$Bevoelkerung2021.add(1393.7)
[void]$Bevoelkerung2021.add(745.2)

[void]$Bevoelkerung2100.add(4674.2)
[void]$Bevoelkerung2100.add(3924.4)
[void]$Bevoelkerung2100.add(586.5)

[void]$Kontinente.add("Asien")
[void]$Kontinente.add("Afrika")
[void]$Kontinente.add("Europa")

#Aufgabe1:

$minBevoelkerung2021 = $Bevoelkerung2021[0]
$minBevoelkerung2021PositionImArray = 0
$minBevoelkerung2021Zaehler = 0

foreach ($bevoelkerungKontinent in $Bevoelkerung2021) {
    if ($minBevoelkerung2021 -gt $bevoelkerungKontinent) {
        $minBevoelkerung2021 = $bevoelkerungKontinent
        $minBevoelkerung2021PositionImArray = $minBevoelkerung2021Zaehler
    }
    $minBevoelkerung2021Zaehler++
}
$minKontinent = $Kontinente[$minBevoelkerung2021PositionImArray]
write-host ("Minimale Bevoelkerung: $minBevoelkerung2021 Kontinent: $minKontinent")
