
resource frontdoor 'Microsoft.Network/frontDoors@2020-05-01' = {
  name: frontdoor1
  location: resourceGroup().location
  tags: {
    Createdby:'Robin Spencer'
  }
  properties: {
    backendPools: [
      {
      name: 'backendone'
      properties: {
        backends: [
          {
            address:
            backendHostHeader:
            enabledState:
            httpPort:
            httpsPort:
            
          }
        ]
      }
      }
    ]
    ]
  }
}
