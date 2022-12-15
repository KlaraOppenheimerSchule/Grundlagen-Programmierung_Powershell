<#
#1a+ Zusatz
[int]$zahl=read-host "Bitte geben Sie eine Zahl ein"

for($i=$zahl; $i -le 10000000000000000000000000; $i=$+1000)
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

#>
#1d
[int]$zaehler=read-host "Bitte geben Sie eine Zahl ein"

for($i=$zaehler; $i -le 1000; $i=$i*2)
{
    write-host $i
}

