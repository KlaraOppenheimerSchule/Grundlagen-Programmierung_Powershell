[int]$passlength = read-host "Definiere die Länge des Passworts"
[int]$anzahlpass = read-host "Wie viele Passwörter?"

function randomPassGenerator($passlength)
{
    $password=""
    $counter=0
    #$pass = "A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","X","Y","Z","a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","q","r","s","t","u","v","x","y","z",0,1,2,3,4,5,6,7,8,9
    #Alternative  mit automatischen Anlegen des Arrays
    $letters1 = (65..90) | ForEach-Object{[char]$_}
    $letters2 = (97..122) | ForEach-Object{[char]$_}
    $numbers = (0..9)
    $pass = $letters1 + $letters2 + $numbers

    while($counter -lt $passlength)
    { 
        #counter wird um 1 erhöht
        $counter++
        $password=$password + (get-Random $pass) 
    }
    return $password
}

$counterNew=0
do
{
    $counterNew++
    $randompassword =randomPassGenerator $passlength
    write-host $randompassword
}
while($counterNew -lt $anzahlpass)