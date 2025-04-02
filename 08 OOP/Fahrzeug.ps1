class Auto 
{
    [string] $hersteller
    [string] $modell
    [int] $leistung
    [float] $verbrauch
    [int] $baujahr
    [bool] $tuerZu = $true
 
    #Konstruktor definiert. Der wartet auf die Klammern gesetzten Parameter
    Auto ([string] $hersteller,[string] $modell,[int] $baujahr,
          [int] $leistung,[float] $verbrauch) 
    {
        $this.hersteller = $hersteller
        $this.modell = $modell
        $this.baujahr = $baujahr
        $this.leistung = $leistung
        $this.verbrauch = $verbrauch
    }

    [void] tuerSchliessen ()
    {
        if ($this.tuerZu) {
            Write-Host -Object "Tür ist bereits geschlossen" -ForegroundColor Red
        }
        else {
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


#Aufruf der Methode der Klasse, die ein Objekt davon anlegt. Methode wird Konstruktor genannt. 
$meinAuto = [Auto]::new("Audi", "A4", 2015, 150, 4.5)
 
$meinAuto 

$meinAuto.tuerOeffnen()
$meinAuto.tuerSchliessen() 
