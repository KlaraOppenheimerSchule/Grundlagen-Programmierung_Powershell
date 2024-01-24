
$randomZahl = Get-Random -minimum 1 -maximum 10
$timer=3

Write-Host "Rate eine Zahl zwischen 1 & 10"
$inputZahl= 100
[int]$inputZahl=Read-Host
if ($inputZahl -eq $randomZahl)
{
    Write-Host "GLUECKWUNSCH! Die Zahl ist Richtig!"
}
else
{
    while (($inputZahl -ne $randomZahl) -and ($timer -ne 0))
    {
        $timer=$timer- 1
        #Write-Host "InputZahl: $inputZahl" 
        #Write-Host "RandomZahl: $randomZahl"
        if ($timer -eq 0)
        {
            Write-Host "Du hast leider keine Versuche mehr!"
            #break
        }
        else
        {
            if ($inputZahl -gt $randomZahl)
            {
                Write-Host "Die gesuchte Zahl ist kleiner als $inputZahl" 
                Write-Host "Versuche es nochmal & Rate eine Zahl zwischen 1 & 10, Du hast Noch $timer Versuche!"
                $inputZahl=Read-Host
            }
            if ($inputZahl -lt $randomZahl)
            {
                Write-Host "Die gesuchte Zahl ist groesser als  $inputZahl"
                Write-Host "Versuche es nochmal & Rate eine Zahl zwischen 1 & 10, Du hast Noch $timer Versuche!"
                $inputZahl=Read-Host
            }
        }
    }
    if ($inputZahl -eq $randomZahl)
    {
        Write-Host "GLUECKWUNSCH! Die Zahl ist Richtig!"
    }
}
