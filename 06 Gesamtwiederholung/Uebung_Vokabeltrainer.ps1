function importCSV()
{
    $vokabeln = Import-Csv -Path "C:\Users\czobe\OneDrive - Klara-Oppenheimer-Schule\Meine Unterlagen\Informatik\Code\Grundlagen-Programmierung_Powershell\06 Gesamtwiederholung\Vokabeln.csv" -Delimiter ";"
    #Debugdaten
    #$vokabeln | Format-Table
    return $vokabeln
}

function testVokabelAbfrage ($vokabeln)
{
    $wunsch= read-host "Lust auf ein Vokabeltest? (j/n)"
    if($wunsch -eq "j")
    {
        write-host "Test wird noch implementiert"
        testVokabel($vokabeln)
    }
    else 
    {
        write-host "Dann halt nicht..."
    }
}

# Überprüfung in eigenen Funktion auslagern
# Ausgabe falls falsch
function testVokabel($vokabeln)
{
    #Eine Vokabel aussuchen
    foreach($einzelneVokabel in $vokabeln)
    {
        $deutscheVokabel=$einzelneVokabel.deutsch
        Write-Host "Bitte folgende Vokabel übersetzen: $deutscheVokabel"
        $englischeEingabeVokabel= read-host "Englische Übersetzung"
        if($englischeEingabeVokabel -eq $einzelneVokabel.englisch)
        {
            write-host "richtig"
        }
        else 
        {
            write-host "falsch"
        }
    }
}

$vokabeln=importCSV
testVokabelAbfrage($vokabeln)
