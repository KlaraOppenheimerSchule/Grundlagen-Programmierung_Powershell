#Aufgabe 1
#1.	Löschen Sie eine von Ihnen zuvor erstellte Datei. (*)
new-item -path c:\test\test.txt -type file -value "Inhalt"
remove-item -path c:\test\test.txt


#Aufgabe 2
#2.	Prüfen Sie, ob es in aktuellem Verzeichnis eine Datei mit dem Namen „Report“ gibt. 
# Sofern nicht, legen Sie diese an. Sofern diese bereits existiert, löschen Sie diese zuvor

if((test-path c:\test\report.txt) -eq $true)
{
    remove-item c:\test\report.txt
}

New-Item c:\test\report.txt -ItemType file

#Aufgabe 3
#3.	Kopieren Sie alle vorhandenen Dateien mit der Endung „txt“ aus dem Dokumentenverzeichnis des 
# aktuellen Nutzers in ein Unterverzeichnis mit dem Namen „Textdateien“. Prüfen Sie auch hier 
# wiederrum zuvor, ob das entsprechende Unterverzeichnis bereits existiert, und legen Sie dieses 
# bei Bedarf zuvor noch an. (**)

$Test = Test-Path c:\Users\$env:USERNAME\Testdateien

if($Test -eq $true)
{
   copy-item C:\Users\$env:USERNAME\*.txt C:$env:USERNAME\Testdateien
}
else
{
    New-Item C:\Users\$env:USERNAME\Testdateien -type directory
    Copy-item C:\Users\$env:USERNAME\*.txt C:\Users\$env:USERNAME\Testdateien
}


#Aufgabe 4
# 4.	Stellen Sie sich folgendes Szenario vor: In einer Abteilung wird gemeinschaftlich ein Scanner 
# genutzt. Der netzwerktaugliche Scanner speichert alle gescannten Dokumente in einem speziellen 
#  Ordner auf einem Netzwerklaufwerk ab. Unglücklicherweise vergessen verschiedene Kollegen, ihre 
# Scanunterlagen nach der Nutzung zu löschen. Ihre Aufgabe ist es, ein Skript zu schreiben, das bei 
# der Ausführung alle Dateien in diesem Ordern löscht. Aus Vereinfachungsgründen erzeugen Sie sich 
# einfach zuvor einem Ordern mit einigen exemplarischen Dateien. Dies müssen hierbei keine PDF-Dateien 
# seinen, TXT-Dateien genügen auch. Eventuell vorhandene Unterordner sollen ebenfalls gelöscht werden. (***)

New-Item -path C:\Desktop\test\Scans\test97.txt -type file -value "Testinhalt"
Remove-Item C:\Desktop\test\Scans\* -Recurse


#Aufgabe 5
# 5.	Ein Kollege hat sich über Ihr eigenmächtiges Vorgehen beschwert. Nach heftigen Diskussionen 
# haben Sie vereinbart, alle Dateien vor der Löschung in einem auf der gleichen Ordnerebene liegenden 
# Ordner „Altscans“ zu verschieben. Sofern dieser Ordner noch nicht existiert, soll dieser angelegt 
# werden. (***)

if((test-path C:\Desktop\test\Altscans) -eq $false)
{
    new-item C:\Desktop\test\Altscans -type Directory
}
move-item C:\Desktop\test\Scans\* C:\Desktop\test\Altscans -Force

#Aufgabe 6
# 6.	Nachdem sich nun auch noch der Systembetreuer beschwert hat, dass das vereinbarte Verfahren zuviel Speicherplatz verbraucht, 
# haben Sie sich darauf verständigt, ein weiteres Skript zu schreiben, das alle Dateien im Ordner „Altscans“ löscht, die 
# größer als 100 KB sind. (***)

$Scans = Get-ChildItem C:\Desktop\test\Altscans
foreach ($Scan in $Scans)
{
    if ($Scan.length -gt 100KB)
    {
        Remove-Item $Scan.fullname -Force
        Write-Host "$Scan geloescht"
    }
    else
    {
        Write-Host "$Scan nicht geloescht"
    } 
}
