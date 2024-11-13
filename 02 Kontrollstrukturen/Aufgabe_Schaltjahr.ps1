[int]$year=read-host "Jahr eingeben"

if($year % 4 -eq 0)
{
    if($year % 100 -ne 0)
    {
        write-host "Schaltjahr"
    }
    elseif($year % 400 -eq 0)
    {
        write-host "Schaltjahr"
    }
    else
    {
        write-host "Kein Schaltjahr"
    }
}
else
{
    write-host "Kein Schaltjahr"
}
