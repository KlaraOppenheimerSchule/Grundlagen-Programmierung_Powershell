#PI wird von der .NET-Klasse Math bezogen
[float]$pi = [math]::PI
[float]$L = Read-host  "L in Metern: "
[float]$D = Read-Host  "Durchmesser in cm: "

[float]$result = (($pi/4*$D*$D)*$L/10000)
write-host($result)