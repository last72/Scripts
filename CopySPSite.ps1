#To Run, Type followings 
#Set-ExecutionPolicy RemoteSigned
#& "C:\Users\Work\Downloads\CopySPSite.ps1" 

#1. Connect to Source SharePoint Site
Connect-PnPOnline -Url https://m365x280502.sharepoint.com/sites/PnPSourceSP -UseWebLogin

#2. Backup Site structure (Create Site template)
Get-PnPProvisioningTemplate -Out SiteTemplate.xml

#3. Create new site (Destination)
New-PnPSite -Type CommunicationSite -Title PnPDestinationSP -Url https://m365x280502.sharepoint.com/sites/PnPDestinationSP

#4. Connect to Destination SharePoint Site
Connect-PnPOnline -Url https://m365x280502.sharepoint.com/sites/PnPDestinationSP -UseWebLogin

#5. Apply template to Destination site
Apply-PnPProvisioningTemplate -Path template.xml

