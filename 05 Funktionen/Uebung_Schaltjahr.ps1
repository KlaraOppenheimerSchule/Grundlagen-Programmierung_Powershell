function checkLeapYear($year)
{
    if($year % 400 -eq 0)
    {
        return $true
    }
    elseif (($year % 4 -eq 0) -and ($year % 100 -ne 0))
    {
        return $true
    }
    else 
    {
        return $false
    }
}

[int]$year=read-host "Bitte Jahr eingeben"
$result=checkLeapYear $year
if ($result)
{
    write-host "Es liegt ein Schaltjahr vor"
}
else 
{
    write-host "Es liegt kein Schaltjahr vor"
}