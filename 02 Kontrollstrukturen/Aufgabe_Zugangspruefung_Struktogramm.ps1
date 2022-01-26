$random = Get-Random -maximum 10 -minimum 1
write-host Geben Sie eine Zahl zwischen 1 und 10 ein
[int]$zahluser1 = read-host

if($random -eq $zahluser1)
{
    write-host "Sie haben richtig geschätzt, die Zahl ist $random"
}
else
{
    if($random -gt $zahluser1)
    {
        write-host "Die zufällige Zahl ist größer als die geschätzte Zahl"
    }
    else
    {
        write-host "Die zufällige Zahl ist kleiner als die geschätzte Zahl"
    }

    [int]$zahluser1 = read-host
    if($random -eq $zahluser1)
    {
        write-host "Sie haben richtig geschätzt, die Zahl ist $random"
    }
    else
    {
        if($random -gt $zahluser1)
        {
            write-host "Die zufällige Zahl ist größer als die geschätzte Zahl"
        }
        else
        {
            write-host "Die zufällige Zahl ist kleiner als die geschätzte Zahl"
        }        
    }
}
