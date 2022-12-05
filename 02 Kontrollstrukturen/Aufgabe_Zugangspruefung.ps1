$user = "admin"
$pass = "admin"
 
write-host "Benutzername:"
$benutzerName = read-host

write-host "Passwort"
$benutzerPasswort = read-host

if($user -ceq $benutzerName)
{
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
    write-host "User falsch"
}