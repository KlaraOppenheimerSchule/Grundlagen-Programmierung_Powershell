class PC
{
    [string] $hersteller
    [string] $baujahr
    [string] $modell
    [bool] $angeschaltet

    PC ([string] $hersteller,[string] $baujahr,[string] $modell,[bool]$angeschaltet)
    {
        $this.hersteller = $hersteller
        $this.baujahr = $baujahr
        $this.modell = $modell
        $this.angeschaltet = $angeschaltet
    }

  [void] hochfahren()
  {
    if ($this.angeschaltet)
    {
         Write-Host -Object "PC ist angeschalten" -ForegroundColor Red
    }
    else
    {
         Write-Host -Object "PC ist ausgeschaltet" -ForegroundColor Red
         $this.angeschaltet=$true
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
}