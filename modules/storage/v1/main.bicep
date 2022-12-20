
param location string = resourceGroup().location

resource storage 'Microsoft.Storage/storageAccounts@2022-05-01' = {
  name: 'sttest'
  location:location
  sku:{
    name:'Standard_LRS'
  }
  kind:'StorageV2'
}
