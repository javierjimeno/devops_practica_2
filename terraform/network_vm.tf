# Create NIC
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_interface

resource "azurerm_network_interface" "myNic" {
  count               = length(var.nodos)
  name                = "vmnic-${var.nodos[count.index]}"  
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

    ip_configuration {
    name                           = "myipconfiguration1"
    subnet_id                      = azurerm_subnet.mySubnet.id 
    private_ip_address_allocation  = "Static"
    private_ip_address             = "192.168.1.${count.index + 10}"
    public_ip_address_id           = azurerm_public_ip.myPublicIp["${count.index}"].id
  }

    tags = {
        environment = "CP2"
    }

}

# IP pública
# https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/public_ip

resource "azurerm_public_ip" "myPublicIp" {
  count               = length(var.nodos)
  name                = "vmip-${var.nodos[count.index]}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  allocation_method   = "Dynamic"
  sku                 = "Basic"

    tags = {
        environment = "CP2"
    }

}
