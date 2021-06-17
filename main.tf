resource "azurerm_template_deployment" "terraform-arm"{
    name                = "terraform-arm-1"
    resource_group_name =  azure_resource_group.<>.name
    virtual_network_name = azurerm_virtual_network.<>.name

    template_body   =   file("template.json")

    parameters  ={
        
    }

    deployment_mode =   "Incremental"
}