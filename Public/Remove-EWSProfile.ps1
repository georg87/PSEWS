function Remove-EWSProfile {
[CmdletBinding(
    DefaultParameterSetName = "All"
)]
Param(
    # The GUID referencing a profile.
    [Parameter(
        Mandatory = $true,
        Position = 0,
        ParameterSetName = "ByGUID",
        ValueFromPipelineByPropertyName = $true
    )]
    [Alias(
        "GUID",
        "ID"
    )]
    [GUID]$ProfileGUID
)
	
    $success = $Script:EWSProfiles.Remove($ProfileGUID)

    if ($success -eq $true) {
        Remove-Item -Path $env:APPDATA\PSEWS\Profiles\$ProfileGUID.clixml -Force
    }
    
    return $success
}
