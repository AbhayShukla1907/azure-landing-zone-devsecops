RGs = {
  RG1 = {
    rg_name  = "LZ_RG1"
    location = "centralindia"
  }
  
  RG2 = {
    rg_name  = "LZ_RG2"
    location = "centralindia"
  }
}


V-NETs = {

  V-NET1 = {
    v-net_name    = "LZ_V-net"
    location      = "centralindia"
    rg_name       = "LZ_RG1"
    address_space = ["10.1.0.0/16"]
  }

}


Subnets = {

  subnet1 = {
    subnet_name      = "frontend_subnet"
    v-net_name       = "LZ_V-net"
    rg_name          = "LZ_RG1"
    address_prefixes = ["10.1.1.0/24"]
  }


  subnet2 = {
    subnet_name      = "backend_subnet"
    v-net_name       = "LZ_V-net"
    rg_name          = "LZ_RG1"
    address_prefixes = ["10.1.2.0/24"]
  }

}


PIPs = {

  PIP1 = {
    pip_name          = "frontend_ip"
    rg_name           = "LZ_RG1"
    location          = "centralindia"
    allocation_method = "Static"
  }


  PIP2 = {
    pip_name          = "backend_ip"
    rg_name           = "LZ_RG1"
    location          = "centralindia"
    allocation_method = "Static"
  }

}


NICs = {

  NIC1 = {

    nic_name = "frontend_nic"
    rg_name  = "LZ_RG1"
    location = "centralindia"

    v-net_name  = "LZ_V-net"
    subnet_name = "frontend_subnet"
    pip_name    = "frontend_ip"

  }


  NIC2 = {

    nic_name = "backend_nic"
    rg_name  = "LZ_RG1"
    location = "centralindia"

    v-net_name  = "LZ_V-net"
    subnet_name = "backend_subnet"
    pip_name    = "backend_ip"

  }

}


vms = {

  VM1 = {

    vm_name  = "frontendvm"
    location = "centralindia"
    rg_name  = "LZ_RG1"

    vm_size  = "Standard_D2ads_v5"
    nic_name = "frontend_nic"


    storage_image_reference = {

      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts-gen2"
      version   = "latest"

    }


    storage_os_disk = {

      name              = "frontend-osdisk"
      caching           = "ReadWrite"
      create_option     = "FromImage"
      managed_disk_type = "Standard_LRS"

    }


    os_profile = {

      computer_name  = "frontend-host"
      admin_username = "frontend"
      admin_password = "frontend@12345!"

    }


    os_profile_linux_config = {

      disable_password_authentication = false

    }

  }



  VM2 = {

    vm_name  = "backendvm"
    location = "centralindia"
    rg_name  = "LZ_RG1"

    vm_size  = "Standard_D2ads_v5"
    nic_name = "backend_nic"


    storage_image_reference = {

      publisher = "Canonical"
      offer     = "0001-com-ubuntu-server-jammy"
      sku       = "22_04-lts-gen2"
      version   = "latest"

    }


    storage_os_disk = {

      name              = "backend-osdisk"
      caching           = "ReadWrite"
      create_option     = "FromImage"
      managed_disk_type = "Standard_LRS"

    }


    os_profile = {

      computer_name  = "backend-host"
      admin_username = "backend"
      admin_password = "backend@12345!"

    }


    os_profile_linux_config = {

      disable_password_authentication = false

    }

  }

}