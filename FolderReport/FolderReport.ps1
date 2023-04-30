[CmdletBinding()]
Param(
[Parameter(Mandatory=$true, HelpMessage="Please enter the full path to the folder")]
[string]$FolderPath
)

if (Test-Path $FolderPath) { 
Get-ChildItem $FolderPath -rec -file | Where {$_.fullname -notlike "*LOCALAPPDATA*"} | select @{n='Parent Path';E={Convert-Path $_.psparentpath}},pschildname,extension, 
@{n='Size (MB)';E={($_.length/1MB).tostring("#.#")}},@{n='When Created';E={$_.creationtime}},@{n='Last Accessed';E={$_.lastaccesstime}},@{n='Last Modified';E={$_.lastwritetime}} |
export-csv "c:\Temp\FolderReport.csv" -NoTypeInformation
}

Start-Sleep -Seconds 3

Write-Host "Please install Power BI Desktop here: https://powerbi.microsoft.com/en-us/desktop/ and then open the report called ""FolderReport.csv"" in c:\Temp\ `nNote you will need to refresh the data once the report opens (see: https://docs.microsoft.com/en-us/power-bi/connect-data/refresh-desktop-file-local-drive)" -ForegroundColor Cyan