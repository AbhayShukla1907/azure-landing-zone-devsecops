module "resource_group" {
  source = "../../module/azure_RG"
  rgs    = var.RGs
}

module "virtual_network" {
  depends_on = [module.resource_group]
  source     = "../../module/azure_vnet"
  v-nets     = var.V-NETs
}

module "Subnet" {
  depends_on = [module.virtual_network]
  source     = "../../module/azure_subnet"
  subnets    = var.Subnets
}

module "public_ip" {
  depends_on = [module.resource_group]
  source     = "../../module/azure_public_ip"
  public_ip  = var.PIPs
}

module "nic" {
  depends_on = [module.Subnet, module.public_ip]
  source     = "../../module/azure_nic"
  nics       = var.NICs
}

module "virtual_machine" {
  depends_on = [module.nic]
  source     = "../../module/azure_vm"
  VMs        = var.vms
}