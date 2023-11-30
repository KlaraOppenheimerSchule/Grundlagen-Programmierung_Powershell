
#Aufgabe 1
$zeichenfolge="bAcKuP.tXt"
$zeichenfolge=$zeichenfolge.ToLower()
write-host $zeichenfolge
 
#Aufgabe 2
$zeichenfolge.contains(".txt")

#Aufgabe 3
$zeichenfolge.IndexOf(".")

#Aufgabe 4
$Zeichenfolge.replace(".", ",")

#Aufgabe 5
[int]$zahl1 = read-host "Zahl"
[int]$zahl2 = read-host "Potenz"
[math]::Pow($zahl1,$zahl2)