$schadstoffliste = New-Object System.Collections.ArrayList

$schadstoffliste.add("A")
$schadstoffliste.add("B")
$schadstoffliste.add("C")
#...

$dreiAchsliste = New-Object System.Collections.ArrayList
$dreiAchsliste.Add(12.50)
$dreiAchsliste.Add(14.60)
$dreiAchsliste.Add(15.70)


$eingegebeneSchadstoffklasse=read-host "Schadstoffklasse A-F eingeben"

$gewaehlterIndex= $schadstoffliste.IndexOf($eingegebeneSchadstoffklasse)

write-host $dreiAchsliste[$gewaehlterIndex]

