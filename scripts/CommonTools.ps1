# tools we expect devs across many scenarios will want
$toolsList = @(
    "sysinternals"
    "putty"
    "procexp"
    "curl"
    "wget"
    "lockhunter"
    "ditto"
    "conemu"
    "clink"
    "everything"
    "greenshot"
    "beyondcompare"
    "dbeaver"
);

foreach ($tool in $toolsList) {
	choco install -y $tool
	Update-SessionEnvironment
}

if (Test-PendingReboot) { Invoke-Reboot }
