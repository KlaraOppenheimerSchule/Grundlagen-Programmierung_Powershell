#Aufgabe 1
new-item c:\test\test.txt -type file
remove-item c:\test\test.txt


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



<#
#5
Remove-Item 'H:\AWP\Arbeiten im Dateisystem\Files\PDF\*' -Recurse


#6
if(-not (test-path C:\Desktop\test\Altscans))
{
    new-item C:\Desktop\test\Altscans -type Directory
}
move-item C:\Desktop\test\Scans\* C:\Desktop\test\Altscans -Force

##7
$Scans = Get-ChildItem C:\Desktop\test\Altscans
foreach ($Scan in $Scans)
{
    if ($Scan.length -gt 100KB)
    {
        Remove-Item $Scan.fullname -Force
        Write-Host "$Scan gelÃ¶scht"
    }
    else
    {
        Write-Host "$Scan nicht gelÃ¶sch“
    } 
}

#Alte Aufgabe

#A2
$Dateien = Get-ChildItem C:\Desktop\test
foreach ($Datei in $Dateien)
{
    if ($Datei.length -eq 0)
    {
        Remove-Item $Datei.fullname -Force
    } 
}
#>
