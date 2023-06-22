function BerechneLKWMaut {
    param(
        [string]$Schadstoffklasse,
        [int]$AnzahlAchsen,
        [double]$GefahreneKilometer
    )
 
    #Achtung Fehler: Schadstoffklassen und Achsenanzahl wurden verwechselt 
    $mautgebuehren = @{
        'A' = @(12.50, 14.60, 15.70, 18.80, 19.80, 20.80)
        'B' = @(13.10, 15.20, 16.30, 19.40, 20.40, 21.40)
    }
 
    $schadstoffklasseIndex = [char]::ToUpper($Schadstoffklasse) - 65  
    
    #Achsenanzahl kann nicht einfach um 3 reduziert werden, sondern es gibt zwei Kategorien
    #bis zu 3 Achsen und ab 4 Achsen, hierfür if/else notwendig.
    $achsenIndex = $AnzahlAchsen - 3
 
    if ($schadstoffklasseIndex -ge 0 -and $schadstoffklasseIndex -lt $mautgebuehren.Count -and $achsenIndex -ge 0 -and $achsenIndex -lt $mautgebuehren[$Schadstoffklasse].Count) {
        $kilometerpreis = $mautgebuehren[$Schadstoffklasse][$achsenIndex]
        $mautbetrag = $kilometerpreis * $GefahreneKilometer
        return $mautbetrag
    }
 
    throw "Ungültige Schadstoffklasse oder Anzahl der Achsen angegeben."
}
 
# Beispielaufruf
#$betrag = BerechneLKWMaut -Schadstoffklasse 'B' -AnzahlAchsen 4 -GefahreneKilometer 1000
#Write-Host "Die LKW-Maut ist: $betrag ct."
 
$schadstoffklasse = Read-Host "Bitte geben Sie die Schadstoffklasse des LKWs ein (A-F):"
 
$anzahlAchsen = Read-Host "Bitte geben Sie die Anzahl der Achsen anzahl des LKWs ein:"
 
$gefahreneKilometer = Read-Host "Bitte geben Sie die gefahrenen Kilometer des LKWs ein:"
 
$betrag = BerechneLKWMaut -Schadstoffklasse $schadstoffklasse -AnzahlAchsen $anzahlAchsen -GefahreneKilometer $gefahreneKilometer
 
Write-Host "Die LKW-Maut ist: $betrag ct."