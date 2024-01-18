[int]$zahl=read-host "Zahl eingeben"

if($zahl -ge 0)
{
    write-host "Zahl ist positiv"
}
else
{
    write-host "Zahl ist negativ"
}