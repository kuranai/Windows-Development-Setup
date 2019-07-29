# tools we expect devs across many scenarios will want
$toolsList = @(
    "7zip.install"
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
    "teamviewer.host"
);

foreach ($tool in $toolsList) {
	choco install -y $tool
	Update-SessionEnvironment
}

if (Test-PendingReboot) { Invoke-Reboot }
