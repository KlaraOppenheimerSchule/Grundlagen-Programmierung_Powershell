function ReadInputValues(){
    $values = @()
    while (($Wert = Read-Host "Zahl eingeben") -ne ""){
        #[int]$wert = Read-Host "Wert eingeben"
        $values += $wert
    }
    return $values
}


function AboveBelow($vals){
    #Durchschnitt berechnen
    $sum=0
    foreach($element in $vals)
    {
        $sum=$sum+$element
    }
    #Testausgabe
    $avg=$sum/$vals.length
    write-host "Summe: $sum"
    write-host "AVG: $avg"

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
    #Testausgabe
    write-host $above
    write-host $below
    return $avg, $below, $above
}

$werte  =   ReadInputValues

$avg, $above, $below = AboveBelow $werte
write-host "AVG: $avg"
write-host "below: $above"
write-host "abvoe: $below"
