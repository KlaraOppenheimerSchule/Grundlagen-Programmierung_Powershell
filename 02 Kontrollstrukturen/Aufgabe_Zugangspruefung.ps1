$user = "admin"
$pass = "admin"
 
write-host "Benutzername:"
$benutzerName = read-host
 
 
if($user -ceq $benutzerName)
{
    write-host "Passwort"
    $passwort = read-host

    if($pass -ceq $passwort){
        write-host "Zugang gewährt"
    }
    else{
        write-host "Passwort falsch"
    }
}
else 
{
    write-host "User falsch"
}