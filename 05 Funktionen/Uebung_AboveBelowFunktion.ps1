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
    $sum=0
    $above = @()
    $below = @()
    foreach($element in $vals)
    {
        if($element -gt $avg)
        {
            $above+= $element
        }
        else 
        {
            $below+= $element    
        }
    }
    

    return $avg, $below, $above
}

$werte  =   ReadInputValues

$avg, $above, $below = AboveBelow $werte
write-host "AVG: $avg"
write-host "above: $above"
write-host "below: $below"
