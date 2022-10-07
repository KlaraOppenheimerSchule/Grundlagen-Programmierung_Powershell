cls
#Hier kommen dann alle Funktionen, die benötigt werden.
function myPing ($ipadresse)
{
	ping $ipadresse
}

function getroute ($ipadresse)
{
	tracert $ipadresse
}

function getdomain ($ipadresse)
{
	nslookup $ipadresse
}


#Schleife, die das Menü aufruft, bis der Nutzer x eingibt.
Do
{	
	Write-Host "Bitte treffen Sie Ihre Wahl"
	Write-Host "   1. Anpingen"
	Write-Host "   2. Route verfolgen"
	Write-Host "   3. Domainnamen ausgeben"
	Write-Host "   x für Beenden"
	$benutzerwahl=Read-Host
	if($benutzerwahl -eq "x")
	{
		break;
	}
	$ipadresse=Read-Host "IP-Adresse eingeben"
	
	switch ($benutzerwahl)
	{
		"1" { myPing -ipadresse $ipadresse }
		"2" { getroute -ipadresse $ipadresse}
		"3" { getdomain -ipadresse $ipadresse}
	}
} 
while ($benutzerwahl -ne "x")