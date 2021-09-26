<#This Script gets you setup and run through the basics by
-Installing the Azure module
- Connecting to Azure
- Setting Subscription
#>

Install-Module -Name Az -Scope CurrentUser -Repository PSGallery

Connect-AzAccount

Set-AZContext -Subscription "Azure subscription 1"

#Get all Resource groups
Get-AzResourceGroup| Format-Table ResourceGroupName

#Create a New Resource Group
New-AzResourceGroup -Name AZ104_UNIT_TEST_VMS_UKW -Location 'UK West'
New-AzResourceGroup -Name AZ104_INTEGRATION_TEST_VMS_UKW -Location 'UK West'
New-AzResourceGroup -Name AZ104_ACCECPTANCE_TEST_VMS_UKW -Location 'UK West'

Get-AzResource  -ResourceGroupName  AZ104_ACCECPTANCE_TEST_VMS_UKS





