
param name string = deployment().name
param location string = resourceGroup().location
param sku string = 'Standard_LRS'

resource storage 'Microsoft.Storage/storageAccounts@2022-05-01' = {
  name: name
  location:location
  sku:{
    name: sku
  }
  kind:'StorageV2'
  properties:{
    minimumTlsVersion:'TLS1_2'
    supportsHttpsTrafficOnly:true
  }
}
