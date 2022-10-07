#Class ist Schlüsselwort der Klasse, ab hier beginnt diese bis zur schließenden geschweiften Klammer
class Auto 
{
    #Attribute der Klasse
    [string] $hersteller 
    [string] $modell
    [int] $leistung
    [float] $verbrauch
    [int] $baujahr
    [bool] $tuerZu = $true
 
    #Konstruktor
    Auto ([string] $hersteller,[string] $modell,[int] $baujahr,
          [int] $leistung,[float] $verbrauch) 
    {
        #Zuweisung der Werte zu dem Objekt
        #$this ist Zeiger auf das gerade erstellte Objekt(sich selber)
        $this.hersteller = $hersteller
        $this.modell = $modell
        $this.baujahr = $baujahr
        $this.leistung = $leistung
        $this.verbrauch = $verbrauch
    }

    #Methoden
    [void] tuerSchliessen ()
    {
        if ($this.tuerZu) {
            Write-Host -Object "Tür ist bereits geschlossen" -ForegroundColor Red
        }
        else {
            #Wert des Attributs tuerZu wird true gesetzt
            $this.tuerZu = $true;
            Write-Host -Object "Tür wurde geschlossen" -ForegroundColor Green
        }
    }

  
    [void] tuerOeffnen ()
    {
        if ($this.tuerZu) {
            $this.tuerZu = $false
            Write-Host -Object "Tür wurde geöffnet" -ForegroundColor Green
        }
        else {
            Write-Host -Object "Tür ist bereits geöffnet" -ForegroundColor Red
        }
    }
}

#Aufruf des Konstruktors und Übergabe der Attributwerte 
$meinAuto = [Auto]::new("Vw", "A4", 2015, 150, 4.5)
$meinAuto1 = [Auto]::new("Vw", "A4", 2010, 150, 4.5)
$meinAuto2 = [Auto]::new("Vw", "A4", 2025, 150, 4.5)
$meinAuto3 = [Auto]::new("Vw", "A4", 2035, 150, 4.5)
$meinAuto4 = [Auto]::new("Vw", "A4", 2045, 150, 4.5)
$meinAuto5 = [Auto]::new("Vw", "A4", 2055, 150, 4.5)
$meinAuto6 = [Auto]::new("Vw", "A4", 2017, 150, 4.5)
$meinAuto7 = [Auto]::new("BMW", "M4", 2000, 200, 3.5)

#Autos einer Arraylist von Autos zuordnen, quasi unser "Fuhrpark"
$meineAutos= New-Object System.Collections.ArrayList
$meineAutos.add($meinAuto)
$meineAutos.add($meinAuto1)
$meineAutos.add($meinAuto2)
$meineAutos.add($meinAuto3)
$meineAutos.add($meinAuto4)
$meineAutos.add($meinAuto5)
$meineAutos.add($meinAuto6)
$meineAutos.add($meinAuto7)

#Iterieren über meine Autoobjekte
foreach($meinAuto in $meineAutos)
{
    $meinAuto.hersteller
    $meinAuto.modell
    $meinAuto.baujahr
    $meinAuto.tuerOeffnen()
}
