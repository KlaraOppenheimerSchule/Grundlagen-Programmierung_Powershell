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

class Rezept {
    [string]$Name
    [int]$Zubereitungszeit
    [string]$Text
    [System.Collections.Generic.List[Zutat]]$Zutaten

    Rezept([string]$name, [int]$zubereitungszeit, [string]$text) {
        $this.Name = $name
        $this.Zubereitungszeit = $zubereitungszeit
        $this.Text = $text
        $this.Zutaten = [System.Collections.Generic.List[Zutat]]::new()
        $this.Zutaten.Add([Zutat]::new("Spaghetti", 65, 200))
        $this.Zutaten.Add([Zutat]::new("Tomatensosse", 155, 100))
    }

    [void] KalorienBerechnen() {
        $kalorienInDerSumme = 0
        foreach ($zutat in $this.Zutaten) {
            $kalorienInDerSumme += $zutat.GetKalorien()
        }
        Write-Output $kalorienInDerSumme
    }
}

$nudelrezept = [Rezept]::new("Spaghetti mit Tomatensosse", 30, "Zuerst muss man ...")
$nudelrezept.KalorienBerechnen()
