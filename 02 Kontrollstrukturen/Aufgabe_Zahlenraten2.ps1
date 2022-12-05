$rdmZahl = Get-Random -minimum 1 -maximum 10 
[int]$userZahl = Read-Host "Zahl zwischen 1 und 10 eingeben"
if ($userZahl -ne $rdmZahl) 
{
    if ($userZahl -lt $rdmZahl) 
    {
        $userZahl = read-host "Zahl war zu niedrig, sie haben noch einen Versuch"
        if ($userZahl -eq $rdmZahl) 
        {
            write-host "Richtig geraten, die Zufallszahl war $rdmZahl, es wurde 2 mal geraten"
        }
        else 
        {
            write-host "Falsch geraten, die Zahl war $rdmzahl"
        }
    }
    else 
    {
        $userZahl = read-host "Zahl war zu groß, sie haben noch einen Versuch"
        if ($userZahl -eq $rdmZahl) 
        {
            write-host "Richtig geraten, die Zufallszahl war $rdmZahl, es wurde 2 mal geraten"
        }
        else 
        {
            write-host "Falsch geraten, die Zahl war $rdmzahl"
        }
    }
}
else 
{
    write-host "Richtig geraten, die Zufallszahl war $rdmZahl , es wurde 1 mal geraten"
}