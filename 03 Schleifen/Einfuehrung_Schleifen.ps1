#Kopfgesteuerte Schleifen
#Zähle eine Zahl von 0 bis 10 hoch
for($i=0; $i -lt 11; $i++)
{
    write-host $i
}

#Alternativ while-Schleife
$y=0
while($y -lt 11)
{
    write-host $y
    $y++
}


#Foreach
#Fußgesteuerte Schleifen
#Do-while
$i=0
do
{
    write-host $i
    $i++
}while($i -lt 11)
#Schleife wird solange ausgeführt/wiederholt, SOLANGE die Bedingung zutrifft


#Do-until
$i=0
do
{
    write-host $i
    $i++
}until($i -gt 10)
#Schleife wird solange ausgeführt, BIS die Bedingung zutrifft
#>