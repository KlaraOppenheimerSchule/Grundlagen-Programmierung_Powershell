<#
#1a+ Zusatz
[int]$zahl=read-host "Bitte geben Sie eine Zahl ein"

for($i=$zahl; $i -le 1000; $i=$+1)
{
    write-host $i
}

#1a + Zusatz - While-Schleife
[int]$zaehler=read-host "Bitte geben Sie eine Zahl ein"

while($zaehler -lt 1001)
{
    write-host $zaehler
    $zaehler=$zaehler+1
}

#1b
for($i=1000; $i -ge 0; $i=$i-100)
{
    write-host $i
}


#1c
[float]$zaehler=read-host "Bitte geben Sie eine Zahl ein"

for($i=$zaehler; $i -ge 0.001; $i=$i/2)
{
    write-host $i
}


#1d
[int]$zaehler=read-host "Bitte geben Sie eine Zahl ein"

for($i=$zaehler; $i -le 1000; $i=$i*2)
{
    write-host $i
}
#>

#1e
# Hinweis: Benutzen Sie den Modulo-Operator. Dieser gibt den Rest eine Division aus. 
7 % 7 # Ist gleich 0, da durch Sieben ohne Rest teilbar, also eine Glückszahl
15 % 7 # = Ist nicht gleich 0, also nicht durch Sieben teilbar ohne Rest






#Lösung 1e
for($i=1; $i -le 1000; $i=$i+1)
{
    if($i % 7  -eq 0)
    {
        write-host "Glückszahl: $i"
    }
}

#2
#Hinweis 1: Wir brauchen eine Schleife, die den Lohn jeden Tag verdopplet. Dies soll solange
# geschehen, bis der eingenommene Gesamtlohn mindestens 40000 beträgt.





#Hinweis 2: Wir benötigen folgende Variablen:
# Tage=Anzahl Tage, die der Arbeiter benötigt. 
# Gesamtlohn = Summe, die der Arbeiter bislang insgeamt verdient hat
# Tageslohn = beginnt mit 1 und wird jeden Tag (entspricht Schleifendurchlauf) verdopplet




#Lösung Aufgabe 2
$tageslohn=1
$gesamtlohn=0
$tage=1

while($gesamtlohn -lt 40000)
{
    $tage++
    $tageslohn=$tageslohn*2
    $gesamtlohn=$gesamtlohn+$tageslohn
}

write-host "Nach $tage wurde ein Gesamtlohn von $gesamtlohn erreicht "
