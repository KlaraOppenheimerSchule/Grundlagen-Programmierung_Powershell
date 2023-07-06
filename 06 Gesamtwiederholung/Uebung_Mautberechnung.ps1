$schadstoffklasse2Achsen = @(
    0.15, # Mautgebühr für Schadstoffklasse 2 und 2 Achsen
    0.20, # Mautgebühr für Schadstoffklasse 2 und 3 Achsen
    0.25  # Mautgebühr für Schadstoffklasse 2 und 4 Achsen
)

$schadstoffklasse3Achsen = @(
    0.18, # Mautgebühr für Schadstoffklasse 3 und 2 Achsen
    0.23, # Mautgebühr für Schadstoffklasse 3 und 3 Achsen
    0.28  # Mautgebühr für Schadstoffklasse 3 und 4 Achsen
)

$schadstoffklasse4Achsen = @(
    0.20, # Mautgebühr für Schadstoffklasse 4 und 2 Achsen
    0.25, # Mautgebühr für Schadstoffklasse 4 und 3 Achsen
    0.30  # Mautgebühr für Schadstoffklasse 4 und 4 Achsen
)

function Berechne-LkwMaut {
    param(
        [int]$schadstoffklasse,
        [int]$achsenAnzahl,
        [double]$gefahreneKilometer
    )

    $kilometerpreis = 0.12  # Beispielwert für den Kilometerpreis (hier können Sie den tatsächlichen Wert einfügen)

    $mautgebuehren = Get-MautgebuehrenListe $schadstoffklasse $achsenAnzahl

    if ($mautgebuehren -ne $null) {
        $mautgebuehr = $mautgebuehren[$achsenAnzahl - 2]
        return $mautgebuehr * $gefahreneKilometer * $kilometerpreis
    } else {
        Write-Host "Ungültige Schadstoffklasse oder Achsenanzahl."
        return 0.0
    }
}

function Get-MautgebuehrenListe {
    param(
        [int]$schadstoffklasse,
        [int]$achsenAnzahl
    )

    switch ($schadstoffklasse) {
        2 {
            return $schadstoffklasse2Achsen
        }
        3 {
            return $schadstoffklasse3Achsen
        }
        4 {
            return $schadstoffklasse4Achsen
        }
        default {
            return $null
        }
    }
}

# Beispielaufruf
$result = Berechne-LkwMaut -schadstoffklasse 2 -achsenAnzahl 3 -gefahreneKilometer 100
Write-Host "LKW-Maut: $result"
