Clear-Host
[int]$zaehler = 0
 
$temp=$gewuerfelteZahlen = New-Object System.Collections.ArrayList
$temp=$gewuerfelteZahlen.Add(11)
$temp=$gewuerfelteZahlen.Add(4)
$temp=$gewuerfelteZahlen.Add(17)
$temp=$gewuerfelteZahlen.Add(9)
$temp=$gewuerfelteZahlen.Add(6)
$temp=$gewuerfelteZahlen.Add(20)
 
$meineZahlen = New-Object System.Collections.ArrayList
[void]$meineZahlen.Add(7)
[void]$meineZahlen.Add(12)
[void]$meineZahlen.Add(20)
[void]$meineZahlen.Add(6)
[void]$meineZahlen.Add(15)
[void]$meineZahlen.Add(13)
 
cls
 
foreach($zahl in $meineZahlen){
   
    if ($gewuerfelteZahlen -contains $zahl) {
        $zaehler++
    }
}
Write-Host "Es sind $zaehler Zahlen richtig."

#Alternativ mit zwei Schleifen

[int]$1Zahl = Read-Host "Geben Sie eine Zahl von 1 bis 24 an! Zahl nummer 1/6"
[int]$2Zahl = Read-Host "Geben Sie eine Zahl von 1 bis 24 an! Zahl nummer 2/6"
[int]$3Zahl = Read-Host "Geben Sie eine Zahl von 1 bis 24 an! Zahl nummer 3/6"
[int]$4Zahl = Read-Host "Geben Sie eine Zahl von 1 bis 24 an! Zahl nummer 4/6"
[int]$5Zahl = Read-Host "Geben Sie eine Zahl von 1 bis 24 an! Zahl nummer 5/6"
[int]$6Zahl = Read-Host "Geben Sie eine Zahl von 1 bis 24 an! Zahl nummer 6/6"
 
$test = New-Object System.Collections.ArrayList
$test.Add($1Zahl)
$test.Add($2Zahl)
$test.Add($3Zahl)
$test.Add($4Zahl)
$test.Add($5Zahl)
$test.Add($6Zahl)
 
 
$gewuerfelteZahlen = New-Object System.Collections.ArrayList
$gewuerfelteZahlen.Add(12) 
$gewuerfelteZahlen.Add(3) 
$gewuerfelteZahlen.Add(1) 
$gewuerfelteZahlen.Add(19) 
$gewuerfelteZahlen.Add(16) 
$gewuerfelteZahlen.Add(24)
 
$einzelneGewuerfelteZahl = 0 
$einzelneGerateneZahl = 0
$anzahlRichtigeZahlen = 0 
Clear-Host
 
foreach($einzelneGerateneZahl in $test ){
    foreach($einzelneGewuerfelteZahl in $gewuerfelteZahlen)
    {
        if ($einzelneGewuerfelteZahl -eq $einzelneGerateneZahl){
 
            Write-host $einzelneGerateneZahl "Diese Zahl haben sie richtig geraten"
            $anzahlRichtigeZahlen++
        }
    }
}
write-host "Sie haben $anzahlRichtigeZahlen Zahlen richtig geraten"
 
$test.Clear()
$gewuerfelteZahlen.Clear()