$wmi = get-wmiobject win32_computersystem
$domainrole = $wmi.DomainRole                    

switch ($domainrole)                        
{                       
    0 {"Ihr Rechner hat die Serverrolle: Stand alone workstation"}                       
    1 {"Ihr Rechner hat die Serverrolle: Member Workstation"}                       
    2 {"Ihr Rechner hat die Serverrolle: Stand Alone Server"}                       
    3 {"Ihr Rechner hat die Serverrolle: Member Server"}                       
    Default {"Wert unbekannt"}                       
}                       