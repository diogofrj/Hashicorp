# Preencha apenas o nome do Hostpool, Resource Group e Subscription ID
$HostpoolName = ''
$ResourceGroupName = ''
$SubscriptionId = ''

# Select AVD Subscription
Select-AzSubscription -SubscriptionId $SubscriptionId

#Enable WVD Start VM on Connect
try {
    $HostpoolParameters = @{
        HostPoolName      = $HostpoolName 
        ResourceGroupName = $ResourceGroupName
    }
    $Hostpool = Get-AzWvdHostPool @HostpoolParameters
    if ($Hostpool.ValidationEnvironment -eq $true) {
        Update-AzWvdHostPool @HostpoolParameters -StartVMOnConnect:$true
        Write-Verbose "Hostpool updated, StartVMOnConnect is set"
    }
}
catch {
    Throw "The hostpooltype for provided hostpool $Hostpoolname must be a check as a validation environment"
}
# Authentication
function GetAuthToken($resource) {
    $context = [Microsoft.Azure.Commands.Common.Authentication.Abstractions.AzureRmProfileProvider]::Instance.Profile.DefaultContext
    $Token = [Microsoft.Azure.Commands.Common.Authentication.AzureSession]::Instance.AuthenticationFactory.Authenticate($context.Account, $context.Environment, $context.Tenant.Id.ToString(), $null, [Microsoft.Azure.Commands.Common.Authentication.ShowDialog]::Never, $null, $resource).AccessToken
    $authHeader = @{
        'Content-Type' = 'application/json'
        Authorization  = 'Bearer ' + $Token
    }
    return $authHeader
}

# Service Principal
$GraphResource = "https://graph.microsoft.com"
$GraphHeader = GetAuthToken -resource $GraphResource
$ServicePrincipalURL = "$($GraphResource)/beta/servicePrincipals?`$filter=displayName eq 'Windows Virtual Desktop'"
$ServicePrincipals = Invoke-RestMethod -Method GET -Uri $ServicePrincipalURL -Headers $GraphHeader


# Define Scope
$ScopeResourceGroup = Get-AzResource -ResourceID (Get-AzWvdSessionHost @HostpoolParameters | Select -Last 1).Id
$Scope = "/subscriptions/$($ScopeResourceGroup.ResourceId.Split("/")[2])"
$AzureResource = "https://management.azure.com"
$AzureHeader = GetAuthToken -resource $AzureResource



#Region create custom role
# Building a new role GUID
$RoleGuid = (New-Guid).Guid
# Generating the role body
$RoleBody = @{
    name       = $RoleGuid
    properties = @{
        roleName         = "AVD - Start VM on connect"
        description      = "Esta Role é usada para iniciar a VM ao conectar"
        assignableScopes = @(
            $Scope
        )
        permissions      = @(
            @{
                actions        = @(
                    "Microsoft.Compute/virtualMachines/start/action",
                    "Microsoft.Compute/virtualMachines/read"
                )
                notActions     = @()
                dataActions    = @()
                notDataActions = @()
            }
        )
    }
}
$RoleJsonBody = $RoleBody | ConvertTo-Json -Depth 5
$DefinitionUrl = "$($AzureResource)/$Scope/providers/Microsoft.Authorization/roleDefinitions/$($RoleGuid)?api-version=2018-07-01"
$CustomRole = Invoke-RestMethod -Method PUT -Body $RoleJsonBody -Headers $AzureHeader -URi $DefinitionUrl

# custom role assignment
$ServicePrincipals.value.id | foreach {
    $AssignGuid = (New-Guid).Guid
    $AssignURL = "$AzureResource/$Scope/providers/Microsoft.Authorization/roleAssignments/$($AssignGuid)?api-version=2015-07-01"
    $assignBody = @{
        properties = @{
            roleDefinitionId = $CustomRole.id
            principalId      = $_
        }
    }
    $JsonBody = $assignBody | ConvertTo-Json 
    Invoke-RestMethod -Method PUT -Uri $AssignURL -Headers $AzureHeader -Body $JsonBody
}
# FIM
