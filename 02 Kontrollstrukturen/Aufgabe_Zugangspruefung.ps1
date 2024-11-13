$user = "admin"
$pass = "admin"
 
$benutzerName = read-host "Nutzername eingeben"
$benutzerPasswort = read-host "Passwort eingeben"

if($user -ceq $benutzerName -and $pass -ceq $benutzerPasswort)
{
    write-host "Zugriff gewährt"
}
else 
{
    write-host "Zugriff nicht gewährt"    
}


