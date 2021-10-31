
param VNetName string = 'Production'
param AddressSpace string = '10.131.0.0/16'
resource VirtualNetwork 'Microsoft.Network/virtualNetworks@2021-03-01' = {
  name:VNetName
  location:'UK South'
  tags:{
    CreatedBy: 'Robin'
    Environment: 'Prooduction'
  }
  properties:{
    addressSpace: {
      addressPrefixes: AddressSpace 
    }
  }
}
