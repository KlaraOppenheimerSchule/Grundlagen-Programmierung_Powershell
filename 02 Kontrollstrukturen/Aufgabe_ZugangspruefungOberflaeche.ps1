$cred = Get-Credential #Read credentials
$username = $cred.username
$password = $cred.GetNetworkCredential().password

if ($username -eq "admin" -and $password -eq "admin")
{
    write-host "Successfully authenticated with given credentials."
    exit #terminate the script.
}
else
{
    write-host "Failed to authenticate."
}