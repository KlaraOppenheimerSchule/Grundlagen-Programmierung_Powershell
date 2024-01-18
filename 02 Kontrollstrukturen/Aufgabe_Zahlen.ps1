[float]$zahl1 = read-host("Zahl1")
[float]$zahl2 = read-host("Zahl2")

if($zahl1 -gt $zahl2) 
{
    write-host("Die zahl1 " + $zahl1 + " ist größer als die Zahl2 " + $zahl2)
} 
else 
{
    write-host("Die zahl2 " + $zahl2 + " ist größer als die Zahl1 " + $zahl1)
} 