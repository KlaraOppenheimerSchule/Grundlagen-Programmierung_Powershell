#Verteilungsfaktor
[double]$Variable2= Read-Host 'Verteilungsfaktor'
#Masse der Person
[double]$Variable3= Read-Host 'Masse der Person'
#Volumen des Getränks
[double]$Variable4= Read-Host 'Volumen des Getränks'
#Alkoholvolumenanteil
[double]$Variable5= Read-Host 'Alkoholvolumenanteil'
#Dichte von Alkohol
[double]$Variable6= Read-Host 'Dichte von Alkohol'
#Aufgenommene Masse des Alkohols
[double] $A= ($Variable4*$Variable5*$Variable6)
Write-Host $A
#Alkoholkontzentration im Blut
[double] $c= $A/($Variable3*$Variable2)
Write-Host $c