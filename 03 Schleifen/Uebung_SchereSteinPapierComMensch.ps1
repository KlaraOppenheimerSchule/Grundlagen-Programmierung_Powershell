Clear-Host
 
[int]$SpielerPunkte = 0
[int]$CPUPunkte = 0
 
While (($SpielerPunkte -lt 3) -and ($CPUPunkte -lt 3))
{
    $Spieler1 = Read-Host "Wähle deine Hand (Schere, Stein, Papier)"
    $Spieler2 = "Stein", "Schere", "Papier" | Get-Random
 
    if ($Spieler1 -eq $Spieler2)
    {
        Write-Host "Das Ergebniss ist ein unentschieden!"
    }
 
    if (($Spieler1 -eq "Stein" -and $Spieler2 -eq "Schere") -or
        ($Spieler1 -eq "Papier" -and $Spieler2 -eq "Stein") -or
        ($Spieler1 -eq "Schere" -and $Spieler2 -eq "Papier")) 
    {
        Write-Host "Der Bot wählte $Spieler2. Du hast gewonnen!"
        $SpielerPunkte=$SpielerPunkte+1
        Write-Host "Momentaner Punktestand:     Du: $SpielerPunkte    |    Bot: $CPUPunkte."
    }
 
 
    if (($Spieler2 -eq "Stein" -and $Spieler1 -eq "Schere") -or
        ($Spieler2 -eq "Papier" -and $Spieler1 -eq "Stein") -or
        ($Spieler2 -eq "Schere" -and $Spieler1 -eq "Papier")) 
    {
        Write-Host "Du hast verloren! Der Bot wählte $Spieler2."
        $CPUPunkte=$CPUPunkte+1
        Write-Host "Momentaner Punktestand:     Du: $SpielerPunkte    |    Bot: $CPUPunkte."
    }
}
 
if ($CPUPunkte -eq 3)
{Write-Host "Schade. Dieses mal hast du verloren."}
 
if ($SpielerPunkte -eq 3) 
{Write-Host "Gratulation, du hast den Bot besiegt!"}