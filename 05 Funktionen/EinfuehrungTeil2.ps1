
Nachrichtenliste
Profilbild von Steinam Karl.
Lisa Vertretung ist eigentlich im Januar ko... x Steinam Karl
Steinam Karl30.01 19:46
Lisa Vertretung ist eigentlich im Januar komplett für alle Schienen bereits umgesetzt worden. Ich sende dir mal mein Excel-FIle mit den Schienenvertretungen zu. Da hat sich bei Dir eigentlich nichts geändert

Nachricht x Steinam Karl, mit einer Anlage.
Steinam Karl30.01 19:46
Umplanung_MEN_RAU_GRF1.xlsx
Dienstag, 31. Januar
Link Zusatzübungen Schleifen   ( Link Weban... x Zobel Christoph
Zobel Christoph31.01 07:58
Zusatzübungen Schleifen  (Webansicht)

Donnerstag, 2. Februar
Profilbild von Steinam Karl.
Hi Christoph,   kannst du der 10FI2 sagen, ... x Steinam Karl
Steinam Karl02.02 11:09
Hi Christoph,

 

kannst du der 10FI2 sagen, dass ich ein paar Minuten später komme. Der Englisch-test in der 11FI1 dauert ein wenig länger. Sie sollen einfach bei Array-Übungen weitermachen

Ja, in welchen Raum werden diese sein? x Zobel Christoph
Zobel Christoph02.02 11:10
Ja, in welchen Raum werden diese sein?

Profilbild von Steinam Karl.
10FI2 bleibt im A405 x Steinam Karl
Steinam Karl02.02 11:17
10FI2 bleibt im A405

Gestern
Hi Karl, soll ich bei der 10Fi5 wiederholen... x Zobel Christoph
Zobel ChristophGestern 18:03
Hi Karl, soll ich bei der 10Fi5 wiederholende Übungen zu Arrays machen morgen in der 5 Stunde machen oder weiter machen bei Funktionen?

Profilbild von Steinam Karl.
Hi Christoph,   ich hätte bei Funktionen we... x Steinam Karl
Steinam KarlGestern 18:04
Hi Christoph,

 

ich hätte bei Funktionen weitergemacht. Da kann man ja auch immer einen Array in Übungen einbauen.

Gibts du dien LN raus? Ich habe für diese W... x Steinam Karl
Steinam KarlGestern 18:05
Gibts du dien LN raus? Ich habe für diese Woche eine Nachschrift angesetzt

Alles klar. Dann mache ich bei Funktionen w... x Zobel Christoph
Zobel ChristophGestern 18:06
Alles klar. Dann mache ich bei Funktionen weiter und schreibe dir, wo ich stehen geblieben bin ins Skript in One Note. Gebe du bitte den Ln heraus, du hattest diesen doch auch korrigiert. Das macht die Sache leichter, oder?

Profilbild von Steinam Karl.
Kein Problem, der LN liegt aber bei Dir auf... x Steinam Karl
Steinam KarlGestern 18:07
Kein Problem, der LN liegt aber bei Dir auf dem Schreibtisch ?

Ja x Zobel Christoph
Zobel ChristophGestern 18:07
Ja

Profilbild von Steinam Karl.
Ich würde damit bis nach den Nachholern war... x Steinam Karl
Steinam KarlGestern 18:07
Ich würde damit bis nach den Nachholern warten wollen. Ansonsten ist es für die Nachschreiber einfacher

Ja, klar. Beginnst du einfach mit Funktione... x Zobel Christoph
Zobel ChristophGestern 18:08
Ja, klar. Beginnst du einfach mit Funktionen in der 5ren Stunde morgen und ich mache in der 6ten STunde dort weiter

Prima. Dann schauen wir mal, was die Woche ... x Zobel Christoph
Zobel ChristophGestern 18:08
Prima. Dann schauen wir mal, was die Woche bringt.... 

Zuletzt gelesen
Heute
Profilbild von Steinam Karl.
cls function MautGebuehr($km = 1000){  ... x Steinam Karl
Steinam Karl12:09

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


