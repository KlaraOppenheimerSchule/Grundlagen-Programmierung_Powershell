cls
function MautGebuehr($km = 1000){

 

    $bis_3 = 12.50, 14.60, 15.70, 18.80, 19.80, 20.80  #Datenstruktur Array
    $ab_4 =  13.10, 15.20, 16.30, 19.40, 20.40, 21.40
    [int]$km = Read-Host "Kilometerzahl"               #Eingabe
    [int]$achszahl = Read-Host "Achszahl"
    [string]$SchadKlasse = Read-Host "Schadstoffklasse"

 

    $achsarray = @()                                  #Hilfsvariable
    $Indexpos = 0

 

    if($achszahl -le 3){                              #Logik
        $achsarray = $bis_3    
    }
    else{
        $achsarray = $ab_4
    }

 

    switch($SchadKlasse){

 

        #Umwandeln von Buchstabe zu Zahl 0 -5
           "A" {$Indexpos =  0}
           "B" {$Indexpos =  1}
           "C" {$Indexpos =  2}
           "D" {$Indexpos =  3}
           "E" {$Indexpos =  4}
           "F" {$Indexpos =  5}
    }

 

    $Mautgebuehr = $achsarray[$Indexpos] * $km
    $Mautgebuehr

 

}

 

#function Name    Parameter

 

function SayHello($Name, $Vorname, $Alter = 29    ){

 


    Write-Host "Hello $Name $Vorname $Alter ist zur klein"

 


}

 


SayHello "Steinam" "Kurt"

hat Kontextmenü


