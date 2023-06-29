############## Auto ####################
class Auto
{
   #Attribute
   [string]$hersteller
   [int]$kilometerStand
   [string]$kennzeichen
   [string]$fahrgestellNr
   [bool]$doorOpenState
   [Mitarbeiter]$fahrer

   #Konstruktor
   Auto([string]$fgnr)
   {
       $this.fahrgestellNr = $fgnr
   }


   #soll das Attribute Fahrer setzen
   [void]setFahrer([Mitarbeiter]$myDriver)
   {
       if($this.fahrer -eq $null)
       {
           $this.fahrer = $myDriver
           $this.fahrer.dienstwagen = $this   
       }
   }

 
   [void]removeFahrer()
   {
       $this.fahrer = $null
   }


   [void]fahren([int]$gef_kilometer)
   {
        if($gef_kilometer -lt 0)
        {

        }
        elseif($this.doorOpenState -eq $false)
        {
            $this.kilometerStand += $gef_kilometer
        }
   }
 

    [string]getFahrerName()
    {
        return $this.fahrer.Name
    }

}

 

########### Mitarbeiterklasse #################
class Mitarbeiter
{
   [int]$persNr
   [string]$name
   [Auto]$dienstwagen

   Mitarbeiter($p, $N)
   {
         $this.name = $N
         $this.persNr = $p
   }

    [int]GetKilometerStandDienstwagen()
    {
        return $this.dienstwagen.kilometerStand

    }
}

  

############# Initialisierung der Klassen ###############

$twingo = [Auto]::new("fsffsde36363")
$ste = [Mitarbeiter]::new(123, "Steinam")
$schmitt = [Mitarbeiter]::new(124, "Schmitt")

$ste.Dienstwagen = $twingo
$twingo.setFahrer($ste)
$twingo.setFahrer($schmitt)

$twingo.fahrer

$twingo.removeFahrer()

$twingo.setFahrer($schmitt)

$twingo.fahrer