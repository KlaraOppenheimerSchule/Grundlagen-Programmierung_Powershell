function ReadInputValues(){
    $values = @()
    while (($Wert = Read-Host "Zahl eingeben") -ne ""){
        #[int]$wert = Read-Host "Wert eingeben"
        $values += $wert
    }
    return $values
}


function AboveBelow($vals)
{
    #Durchschnitt berechnen
    $sum=0
    foreach($element in $vals)
    {
        $sum=$sum+$element
    }
    $avg=$sum/$vals.length

    #Werte dem entsprechenden Array zuordnen
    $above = @()
    $below = @()
    foreach($element in $vals)
    {
        #TODO: Gleichheit noch abdecken
        if($element -gt $avg)
        {
            $above+= $element
        }
        else 
        {
            $below+= $element    
        }
    }
    #Alle drei Werte an den Aufrufer zurückgeben
    return $avg, $below, $above
}

$werte  =   ReadInputValues

#Bei Rückgabe auch drei Werte zum Auffangen der Rückgabewerte nutzen
$avg, $below, $above=  AboveBelow $werte
write-host "AVG: $avg"
write-host "above: $above"
write-host "below: $below"
