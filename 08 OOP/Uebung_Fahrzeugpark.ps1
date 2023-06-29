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
   [int]$personalNummer
   [string]$name
   [Auto]$dienstwagen

   Mitarbeiter($pNr, $n)
   {
         $this.name = $n
         $this.personalNummer = $pNr
   }

    [int]GetKilometerStandDienstwagen()
    {
        return $this.dienstwagen.kilometerStand

    }
}

  

############# Initialisierung der Klassen ###############

$twingo = [Auto]::new("fsffsde36363")
$ste = [Mitarbeiter]::new(123, "Steinam")
$zobel = [Mitarbeiter]::new(124, "Zobel")

$ste.Dienstwagen = $twingo
$twingo.setFahrer($ste)
$twingo.setFahrer($zobel)

$twingo.fahrer

$twingo.removeFahrer()

$twingo.setFahrer($zobel)

$twingo.fahrer