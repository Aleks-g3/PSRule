param location string = resourceGroup().location

module storage_basic '../main.bicep' = {
  name: 'sttest002'
  params:{
    location: location
    sku: 'Standard_LRS'
  }
}
