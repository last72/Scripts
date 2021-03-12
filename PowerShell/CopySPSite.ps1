<#
To Run, Type followings
Install-Module SharePointPnPPowerShellOnline
Set-ExecutionPolicy RemoteSigned
& "C:\Users\Work\Downloads\CopySPSite.ps1" 
cd Downloads
#>

#Set the variables
$SourceTenant = "m365x280502" # Tanent name. i.e. microsoft in https://microsoft.sharepoint.com
$SourceSite = "PnPSourceSP" # Source site name in address
$DestinationTenant = "m365x280502" # Tanent name. i.e. microsoft in https://microsoft.sharepoint.com
$DestinationSite = "PnPDestinationSP" # Destination site in address
$DestinationTitle = "PnPDestinationSP" # Destination site name in address

#1. Connect to Source SharePoint Site
Connect-PnPOnline -Url https://$SourceTenant.sharepoint.com/sites/$SourceSite -UseWebLogin

#2. Backup Site list structure (Create Site template)
Get-PnPProvisioningTemplate -Out "$SourceSite.xml" -Handlers Lists, Fields -Force

#3. Create new site (Destination)
Connect-PnPOnline -Url https://$DestinationTenant.sharepoint.com/ -UseWebLogin
# This New-PnPSite does not work right now. Create SharePoint Teams site manually from your web browser
# New-PnPSite -Type TeamSite  -Title $DestinationTitle -Alias $DestinationSite

#4. Connect to Destination SharePoint Site
Connect-PnPOnline -Url https://$DestinationTenant.sharepoint.com/sites/$DestinationSite -UseWebLogin

#5. Apply template to Destination site
Apply-PnPProvisioningTemplate -Path "$SourceSite.xml"
