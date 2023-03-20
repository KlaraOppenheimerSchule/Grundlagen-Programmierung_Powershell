function ReadInputValues(){
    $values = @()
    while (($Wert = Read-Host "Zahl eingeben") -ne ""){
        #[int]$wert = Read-Host "Wert eingeben"
        $values += $wert
    }
    return $Values
}



function AboveBelow([int[]]$vals){
    #return $below, $avg, $above
}

$werte  =   ReadInputValues

$ergebnis = AboveBelow (ReadInputValues)
