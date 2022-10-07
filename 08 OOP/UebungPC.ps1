class PC
{
    [string] $hersteller
    [string] $baujahr
    [string] $modell
    [bool] $angeschaltet

    #Konstruktor
    PC ([string] $herstellerx,[string] $baujahr,[string] $modell,[bool]$angeschaltet)
    {
        $this.hersteller = $herstellerx
        $this.baujahr = $baujahr
        $this.modell = $modell
        $this.angeschaltet = $angeschaltet
    }

    #Soll hoch- und runterfahren, Methode ist noch zu durchdenken, in der Realisierun
    #Wie Autobeispiel
    [void] hochfahren()
    {
        if ($this.angeschaltet)
        {
            Write-Host -Object "PC ist ausgeschaltet" -ForegroundColor Green
            $this.angeschaltet=$false
       
        }
        else
        {
            Write-Host -Object "PC ist angeschalten" -ForegroundColor Red
        }
    }
}

#Arraylist erzeugen
$Pcs = New-Object System.Collections.ArrayList

#Drei Objekte auf Basis der Klasse PC erzeugen
$PC1 = [PC]:: new("Lenovo","2019","LegionY520", $true)
$PC2 = [PC]:: new("Lenovo1","2018","LegionY521", $true)
$PC3 = [PC]:: new("Lenovo2","2017","LegionY522", $true)

#PCs der Arraylist hinzufügen
$Pcs.Add($PC1)
$Pcs.Add($PC2)
$Pcs.Add($PC3)

#Jeden PC aus der Arraylist Pcs hochfahren
foreach ($PC in $Pcs)
{
   $PC.hochfahren()
   $PC.hochfahren()
}