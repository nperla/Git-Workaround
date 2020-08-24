#Creating Virtual Network
resource "azurerm_virtual_network" "myVirtualNetwork1" {
  name                = "myVirtualNetwork1"
  address_space       = ["10.0.0.0/16"]
  location            = ""
  resource_group_name = ""
}

# Creating subnet under Virtual network
resource "azurerm_subnet" "Subnet1" {
  name                 = "Subnet1"
  resource_group_name  = "".name
  virtual_network_name = ""
  address_prefix       = "10.0.0.0/24"
}

/*resource "azurerm_network_security_group" "myNSG" {
  name                = "acceptanceTestSecurityGroup1"
  location            = "".location
  resource_group_name = "".name

  security_rule {
    name                       = "Rule"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags = {
    Environment  = "Teeraform-Test"
  }
}*/


/*resource "azurerm_network_interface" "NIC" {
  name                = "my-nic"
  resource_group_name = "".name
  location            = "".location

  ip_configuration {
    name                          = "Subnet1"
    subnet_id                     = azurerm_subnet.Subnet1.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.publicip.id
  }
}

resource "azurerm_public_ip" "publicip" {
    name    = "publicip"23.96.9.84
    location    = "".location
    resource_group_name = "".name
    allocation_method   = "Dynamic"
}*/