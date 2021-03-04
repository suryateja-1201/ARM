param 
(
    [Parameter(Mandatory=$True)][string]$rgn,
    [Parameter(Mandatory=$True)][string]$loc,
    [Parameter(Mandatory=$True)][string]$vNetworkName
    #[Parameter(Mandatory=$True)][string]$vNetworkAddress
)

$PassParm = @{
    vNetName = $vNetworkName
    #IPPrefix = $vNetworkAddress
}

New-AzResourceGroupDeployment -Name "testdep01" -ResourceGroupName $rgn -TemplateFile .\vnet1.json -TemplateParameterObject $PassParm