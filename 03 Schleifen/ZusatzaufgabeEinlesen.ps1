do{
    $nachname=read-host "Nachname: "
    [int]$alter=read-host "Alter: "
}while($nachname -ne "" -and $alter >0)

write-host "$nachname ist $alter alt"