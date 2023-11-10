# main.tf 

module "ubuntu_vm" {
    source = "./modules/Ubuntu_Cloud"

    # Vcenter 
    datacenter = var.datacenter 
    cluster = var.cluster
    datastore = var.datastore

    # Specs 
    name = "ubuntu_vm"
    domain = "local.local"
    template = "ubuntu-cloud-22.04"
    network = "VM Network"
    cpus = 2
    memory = 4096
    
    # Network 
    hostname = "ubuntu_vm"
    vm_ip = "10.10.1.95"
    gateway = "10.10.10.1" 
    dns = "10.10.10.2" 
    netmask = "24" 

    # Secrets
    ssh_key = var.ssh_key
    vm_user = var.vm_user
    vm_pass = var.vm_pass
}
