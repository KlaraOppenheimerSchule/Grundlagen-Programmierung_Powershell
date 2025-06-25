# Klasse Zutat
class Zutat {
    [string]$Name
    [int]$Kalorien
    [int]$Menge

    Zutat([string]$name, [int]$kalorien, [int]$menge) {
        $this.Name = $name
        $this.Kalorien = $kalorien
        $this.Menge = $menge
    }

    [int] GetKalorien() {
        return $this.Kalorien
    }
}

# Klasse Rezept
class Rezept {
    [string]$Name
    [int]$Zubereitungszeit
    [string]$Text
    [System.Collections.ArrayList]$Zutaten

    Rezept([string]$name, [int]$zubereitungszeit, [string]$text, [System.Collections.ArrayList]$zutaten) {
        $this.Name = $name
        $this.Zubereitungszeit = $zubereitungszeit
        $this.Text = $text
        $this.Zutaten = $zutaten
    }

    [void] KalorienBerechnen() {
        $kalorienInDerSumme = 0
        foreach ($zutat in $this.Zutaten) {
            $kalorienInDerSumme += $zutat.GetKalorien()
        }
        Write-Output $this.Name
        Write-Output $kalorienInDerSumme
    }
}

# Erstes Rezept
$zutat1 = [Zutat]::new("Spaghetti", 65, 200)
$zutat2 = [Zutat]::new("Tomatensosse", 155, 100)
$zutaten = [System.Collections.ArrayList]::new()
$null = $zutaten.Add($zutat1)
$null = $zutaten.Add($zutat2)

$nudelrezept = [Rezept]::new("Spaghetti mit Tomatensosse", 30, "Zuerst muss man ...", $zutaten)
$nudelrezept.KalorienBerechnen()

# Zweites Rezept
$zutatneu1 = [Zutat]::new("Eier", 77, 6)
$zutatneu2 = [Zutat]::new("Mehl", 15, 300)
$zutatneu3 = [Zutat]::new("Milch", 45, 200)

$zutatenneu = [System.Collections.ArrayList]::new()
$null = $zutatenneu.Add($zutatneu1)
$null = $zutatenneu.Add($zutatneu2)
$null = $zutatenneu.Add($zutatneu3)

$kuchenrezept = [Rezept]::new("Eierkuchen", 65, "Zuerst müssen die Eier...", $zutatenneu)
$kuchenrezept.KalorienBerechnen()
