function importCSV()
{
    $vokabeln = Import-Csv -Path "C:\Users\Zobel\OneDrive - Klara-Oppenheimer-Schule\Meine Unterlagen\Informatik\Code\Grundlagen-Programmierung_Powershell\06 Gesamtwiederholung\Vokabeln.csv" -Delimiter ";"
    #Debugdaten
    $vokabeln | Format-Table
    return $vokabeln
}

function testVokabelAbfrage ($vokabeln)
{
    $wunsch= read-host "Lust auf ein Vokabeltest? (j/n)"
    if($wunsch -eq "j")
    {
        write-host "Test wird noch implementiert"
        #testVokabel($vokabeln)
    }
    else 
    {
        write-host "Dann halt nicht..."
    }
}

function testVokabel($vokabeln)
{
    #Eine Vokabel aussuchen

    #Deutsches Wort ausgegeben hierfür

    #Englisches Wort einlesen lassen

    #Funktion aufrufen testVokabelKorrekt, die prüft ob die Eingabe richtig ist
}

$vokabeln=importCSV
testVokabelAbfrage($vokabeln)
