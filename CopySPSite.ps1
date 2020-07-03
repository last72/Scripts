#To Run, Type followings 
#Set-ExecutionPolicy RemoteSigned
#& "C:\Users\Work\Downloads\CopySPSite.ps1" 

#Set the variables
$SourceTanent = "m365x280502" # Tanent name. i.e. microsoft in https://microsoft.sharepoint.com
$SourceSite = "PnPSourceSP" # Source site name in address
$DestinationTanent = "m365x280502" # Tanent name. i.e. microsoft in https://microsoft.sharepoint.com
$DestinationSite = "PnPDestinationSP" # Destination site in address
$DestinationTitle = "PnPDestinationSP" # Destination site name in address

#1. Connect to Source SharePoint Site
Connect-PnPOnline -Url https://$SourceTanent.sharepoint.com/sites/$SourceSite -UseWebLogin

#2. Backup Site list structure (Create Site template)
Get-PnPProvisioningTemplate -Out "$SourceSite.xml" -Handlers Lists, Fields -Force

#3. Create new site (Destination)
New-PnPSite -Type CommunicationSite -Title $DestinationTitle -Url https://$DestinationTanent.sharepoint.com/sites/$DestinationSite

#4. Connect to Destination SharePoint Site
Connect-PnPOnline -Url https://$DestinationTanent.sharepoint.com/sites/$DestinationSite -UseWebLogin

#5. Apply template to Destination site
Apply-PnPProvisioningTemplate -Path "$SourceSite.xml"
