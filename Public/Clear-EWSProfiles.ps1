function Clear-EWSProfiles {
	Remove-Item -Path $env:APPDATA\PSEWS -Recurse -Force
	$Script:EWSProfiles.Clear()
}
