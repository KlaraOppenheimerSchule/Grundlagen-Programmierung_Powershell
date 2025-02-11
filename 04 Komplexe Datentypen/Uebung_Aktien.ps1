$kursverlaufListe = New-Object System.Collections.ArrayList
$kursverlaufListe.AddRange(@(22.39, 22.15, 24.64, 26.75, 28.59, 30.06, 30.21, 32.34, 30.22, 38.22))
Write-Host $kursverlaufListe

### Höchstwert ausgeben
$hoechsterWert = $kursverlaufListe[0]
for ($i = 0 ; $i -lt $kursverlaufListe.Count ; $i++){
    if ($kursverlaufListe[$i] -gt $hoechsterWert){
        $hoechsterWert = $kursverlaufListe[$i]
    }
}
Write-Host $hoechsterWert


### Durchschnitt berechnen

$durchschnitt = 0
foreach ($element in $kursverlaufListe){
    $durchschnitt = $durchschnitt + $element
}
$durchschnitt = $durchschnitt / $kursverlaufListe.Count
Write-Host $durchschnitt


### KGV
$tagindex = 0
foreach ($element in $kursverlaufListe){
    $kgvTag = $element / 1.10
    Write-Host "KGV an Tag $($tagindex) =" $kgvTag
    $tagindex++
}


### Gleitender Durchschnitt
for ($i = 2 ; $i -lt $kursverlaufListe.Count ; $i++){
    $gdurchschnitt = ( $kursverlaufListe[$i-2] + $kursverlaufListe[$i-1] + $kursverlaufListe[$i] ) / 3
    Write-Host "Der gleitende Durchschnitt beträgt für Tag $($i) =" $gdurchschnitt
}
