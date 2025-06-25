#Aufgabe 1

Get-ChildItem

#Aufgabe 2

$pi = [math]::pi
Write-Host "Pi = "$pi

#Aufgabe 3

$dateObject = Get-Date
Write-Host "Aktuelles Datum: "$dateObject.Date
#Aufgabe 4

Write-Host "Aktuelles Jahr: "$dateObject.Year

#Aufgabe 5

$zufallszahl = get-random -Minimum 0 -Maximum 101
write-host "Zufallszahl: "$zufallszahl

#Aufgabe 6

$durchSchnittObject = 6, 8 ,10 | Measure-Object -Average
write-host "Durschnitt beträgt: "$durchSchnittObject.Average

#Aufgabe 7

$pfad = read-host "Pfad eingeben: "
Get-ChildItem -Path $pfad -Directory

#Aufgabe 8

#$csv = Import-Csv .\vokabeln.csv
#write-host $csv