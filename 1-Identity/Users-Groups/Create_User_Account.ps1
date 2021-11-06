<#
This Script logs in to Azure AD, set's the context, and creates a user account.
#>

#Connect to Azure 
Connect-AzAccount
Get-AzContext
Set-AZContext -Subscription "Azure subscription 1"

#ImportModule
Import-Module AzureAD


#Create a password
$PasswordProfile = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$PasswordProfile.Password = "Cobbl3P0t"

#Connect to Azure AD - only works on PowerShell versions 3-5. No PS Core
Connect-AzureAD
New-AzureADUser -DisplayName "frodo.baggins" -PasswordProfile $PasswordProfile -UserPrincipalName "frodo@robin-spencer.co.uk" -AccountEnabled $true -MailNickName "frodo"





