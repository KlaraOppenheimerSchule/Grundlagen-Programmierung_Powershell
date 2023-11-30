$eMailadresse="zobel@klara-oppenheimer-schule.de"
$eMailadresse.Length
$eMailadresse.IndexOf("@")
$eMailadresse.Replace("@", "[at]")
$eMailadresse | Get-Member

$eMailadresse.ToUpper()