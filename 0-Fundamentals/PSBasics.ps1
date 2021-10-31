<#This Script gets you setup and runs through the basics by
-Checking PowerShell version
-Installing the Azure module
-Connecting to Azure
-Setting Subscription
#>

#Check PowerShell version
$PSVersionTable

#Check Az version
az version

#Find,Update and or Install AZ Module
Find-Module -Name Az   
Update-Module -Name AZ
Install-Module -Name Az -Scope CurrentUser -Repository PSGallery

#Azure 
Connect-AzAccount
Set-AZContext -Subscription "Azure subscription 1"

#Get all Resource groups
Get-AzResourceGroup| Format-Table ResourceGroupName
Get-AzResource  -ResourceGroupName  AZ104_ACCECPTANCE_TEST_VMS_UKS

#Create a New Resource Group
New-AzResourceGroup -Name AZ104_UNIT_TEST_VMS_UKW -Location 'UK West'







