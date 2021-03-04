targetScope = 'subscription'

resource rg 'Microsoft.Resources/resourceGroups@2020-06-01'={
  name: 'biceprg1'
  location: deployment().location
}

module appPlanDeploy 'appPlan.bicep' = {
  name: 'appPlanDeploy'
  scope: rg
  params:{
    namePrefix: 'biceprg2'
  }
}