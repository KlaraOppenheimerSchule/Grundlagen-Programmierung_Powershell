[int]$anschaffungswert = read-host "Bitte Anschaffungswert eingeben"
[int]$abschreibungsdauer = read-host "Bitte Abschreibungsdauer eingeben"

$abschreibungsbetrag = $anschaffungswert / $abschreibungsdauer
$Anfangswert = $anschaffungswert

write-host "Nutzungsjahr_____Anfangswert_______Abschreibung______Restwert"

for ($i = 1 ; $i -le $abschreibungsdauer ; $i++) {

    #$Restwert = $anschaffungswert - $i * $abschreibungsbetrag
    $Restwert = $Anfangswert - $abschreibungsbetrag
    write-host $i "                   "  $Anfangswert  "             "   $abschreibungsbetrag  "         "   $Restwert
    $Anfangswert = $Restwert

}