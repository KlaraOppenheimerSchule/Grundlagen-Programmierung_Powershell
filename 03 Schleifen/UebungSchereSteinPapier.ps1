$win1 = 0
$win2 = 0

while ($win1 -lt 3 -and $win2 -lt 3){
    $s1 = Get-Random -Minimum 1 -Maximum 4
    $s2 = Get-Random -Minimum 1 -Maximum 4
    #1=Schere
    #2=Stein
    #3=Papier
    
    if ($s1 -eq $s2)
    {
        Write-Host "Unentschieden! Stand:" $win1 "zu" $win2
    }
    elseif(($s1 -eq 1 -and $s2 -eq 3) -or ($s1 -eq 2 -and $s2 -eq 1) -or ($s1 -eq 3 -and $s2 -eq 2))
    {
        $win1++
        Write-Host "Punkt für Spieler 1! Stand:" $win1 "zu" $win2
    }
    else
    {
        $win2++
        Write-Host "Punkt für Spieler 2! Stand: Spieler1:" $win1 "Spieler2:" $win2
    }
}

Write-host "Spielende! Spieler1:" $win1 "Spieler2:" $win2