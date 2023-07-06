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
            write-host "Minuskilometer sind nicht möglich. Der Tacho darf nicht zurückgedreht werden"
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
$schmidt = [Mitarbeiter]::new(125, "Schmitti") 



$ste.Dienstwagen = $twingo
$twingo.setFahrer($ste)
$twingo.setFahrer($zobel)

$twingo.fahrer

$twingo.removeFahrer()
$twingo.fahren(100)
$twingo.setFahrer($zobel)

$twingo.fahrer