# Install programming languages
$toolsList = @(
    "python"
    "pip"
    "javaruntime"
    "jdk8"
    "nodejs.install"
    "yarn"
    "golang"
    "dart-sdk"
);

foreach ($tool in $toolsList) {
	choco install -y $tool
	Update-SessionEnvironment
}

# Update pip
python -m pip install --upgrade pip

if (Test-PendingReboot) { Invoke-Reboot }
