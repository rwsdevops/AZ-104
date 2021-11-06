
param VNetName string = 'Production'
param AddressSpace string = '10.131.0.0/16'
resource VirtualNetwork 'Microsoft.Network/virtualNetworks@2021-03-01' = {
  name:VNetName
  location:'UK South'
  tags:{
    CreatedBy: 'Robin'
    Environment: 'Prooduction'
  }
}
resource virtualNetwork 'Microsoft.Network/virtualNetworks@2019-11-01' = {
  name: 'name'
  location: resourceGroup().location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.0.0.0/16'
      ]
    }
    subnets: [
      {
        name: 'Subnet-1'
        properties: {
          addressPrefix: '10.0.0.0/24'
        }
      }
      {
        name: 'Subnet-2'
        properties: {
          addressPrefix: '10.0.1.0/24'
        }
      }
    ]
  }
}
