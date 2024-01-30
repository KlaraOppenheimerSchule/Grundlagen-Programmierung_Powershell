
[int]$alter = read-host "Bitte Alter eingeben"

while($alter -lt 101)
{
    if($alter % 2 -eq 0)
    {
        write-host "Alter ist rund: $alter"
    }
    $alter++
}