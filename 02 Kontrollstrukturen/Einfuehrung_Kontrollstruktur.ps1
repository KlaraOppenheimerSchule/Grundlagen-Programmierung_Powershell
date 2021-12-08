[int] $zahl = Read-Host
 
if($zahl -gt 0)
{
    write-host "Zahl ist größer 0"
}
else
{
    if($zahl -eq 0)
    {
        write-host "Zahl ist 0"
    }
    else 
    {
        write-host "Zahl ist kleiner 0"
    }
}
