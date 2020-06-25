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
	
	return $Script:EWSProfiles.Remove($ProfileGUID)
}
