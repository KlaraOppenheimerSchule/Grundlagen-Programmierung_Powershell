#Aufgabe 1
new-item -path c:\test\test.txt -type file -value "Inhalt"
remove-item -path c:\test\test.txt


#Aufgabe 2
if((test-path c:\test\report.txt) -eq $true)
{
    remove-item c:\test\report.txt
}

New-Item c:\test\report.txt -ItemType file

#Aufgabe 3
#Textdateigeneriung:
#new-item -Path C:\Users\$env:USERNAME\Testdatei.txt -value "test"

$Test = Test-Path c:\Users\$env:USERNAME\Testdateien

if($Test -eq $true)
{
   copy-item C:\Users\$env:USERNAME\*.txt C:$env:USERNAME\Testdateien
}
else
{
    New-Item C:\Users\$env:USERNAME\Testdateien -type directory
    Copy-item C:\Users\$env:USERNAME\*.txt C:\Users\$env:USERNAME\Testdateien
}


#Aufgabe 4
New-Item -path C:\Desktop\test\Scans\test97.txt -type file -value "Testinhalt"
Remove-Item C:\Desktop\test\Scans\* -Recurse


#Aufgabe 5
if((test-path C:\Desktop\test\Altscans) -eq $false)
{
    new-item C:\Desktop\test\Altscans -type Directory
}
move-item C:\Desktop\test\Scans\* C:\Desktop\test\Altscans -Force

#Aufgabe 6
$Scans = Get-ChildItem C:\Desktop\test\Altscans
foreach ($Scan in $Scans)
{
    if ($Scan.length -gt 100KB)
    {
        Remove-Item $Scan.fullname -Force
        Write-Host "$Scan geloescht"
    }
    else
    {
        Write-Host "$Scan nicht geloescht"
    } 
}
