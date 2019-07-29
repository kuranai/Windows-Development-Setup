# Using vscode as a default IDE
$toolsList = @(
    "vscode"
    "git --params '/GitAndUnixToolsOnPath /WindowsTerminal'"
    "github-desktop"
    "Git-Credential-Manager-for-Windows"
);

foreach ($tool in $toolsList) {
	choco install -y $tool
	Update-SessionEnvironment
}
if (Test-PendingReboot) { Invoke-Reboot }
