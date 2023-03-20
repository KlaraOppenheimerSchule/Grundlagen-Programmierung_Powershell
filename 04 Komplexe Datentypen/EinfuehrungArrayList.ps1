$essensWuensche = New-Object System.Collections.ArrayList

[void]$essensWuensche.Add("Klaus")
[void]$essensWuensche.Add("Klaus1")
[void]$essensWuensche.Add("Klaus2")
[void]$essensWuensche.Add("Klaus3")
[void]$essensWuensche.Add("Klaus4")

$essensWuensche.Contains("Klaus")
$essensWuensche.IndexOf("Klaus3")
$essensWuensche.Remove("Klaus4")

$essensWuensche[2]="Uschi"
write-host $essensWuensche

#foreach-Schleife
