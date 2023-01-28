$user="admin"
$pass= "1234"
 
write-host "Geben sie ihren Benutzernamen ein:"
$benutzerName = read-host
 
if($user -ceq $benutzerName) 
{ 
    write-host "Passwort"
    $benutzerPasswort =Read-Host
 
    if($pass -ceq $benutzerPasswort) 
    {
        write-host "Zugang gewährt"
    }
    else 
    {
        write-host "Passwort falsch"    
    }
} 
else 
{
    write-host "Anmeldung Fehlgeschlagen"
}