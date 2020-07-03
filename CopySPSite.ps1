#To Run, Type followings 
#Set-ExecutionPolicy RemoteSigned
#& "C:\Users\Work\Downloads\CopySPSite.ps1" 

#Set the variables
$tanent = "m365x280502" # Tanent name. i.e. microsoft in https://microsoft.sharepoint.com
$sourcesite = "PnPSourceSP" # Source site name in address
$destinationsite = "PnPDestinationSP" # Destination site name in address

#1. Connect to Source SharePoint Site
Connect-PnPOnline -Url https://$tanent.sharepoint.com/sites/$sourcesite -UseWebLogin

#2. Backup Site structure (Create Site template)
Get-PnPProvisioningTemplate -Out "$sourcesite.xml"

#3. Create new site (Destination)
New-PnPSite -Type CommunicationSite -Title $destinationsite -Url https://m365x280502.sharepoint.com/sites/$destinationsite

#4. Connect to Destination SharePoint Site
Connect-PnPOnline -Url https://$tanent.sharepoint.com/sites/$destinationsite -UseWebLogin

#5. Apply template to Destination site
Apply-PnPProvisioningTemplate -Path "$sourcesite.xml"
