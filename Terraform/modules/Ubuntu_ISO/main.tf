# Purpose: Create Ubuntu VM on vSphere


## Data
data "vsphere_datacenter" "dc" {
  name = var.datacenter_name
}

data "vsphere_datastore" "datastore" {
  name          = "NAS"
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_network" "network" {
  name          = var.network_name
  datacenter_id = data.vsphere_datacenter.dc.id
}

data "vsphere_compute_cluster" "cluster" {
  name          = var.cluster_name
  datacenter_id = data.vsphere_datacenter.dc.id
}


## Resources
resource "vsphere_virtual_machine" "vm" {
  name             = var.instance_id
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = var.resource_cpu
  memory   = var.resource_memory

  network_interface {
    network_id   = data.vsphere_network.network.id
    adapter_type = "e1000"
  }

  disk {
    size             = var.resource_disk
    label            = "disk0"
    thin_provisioned = true
  }

  cdrom {
    datastore_id = data.vsphere_datastore.datastore.id
    path         = "ISO/ubuntu-22.04.3-live-server-amd64.iso"
  }

  # cloud-init user-data and meta-data configuration
  vapp {
    properties = {
      "user-data" = base64encode(templatefile("${path.module}/cloudinit-data/user-data.tpl", {
        ip_address = var.vm_ipv4_address,
        gateway    = var.vm_ipv4_gateway,
        user       = var.user,
        password   = var.password,
        ssh_authorized_keys = var.ssh_authorized_keys,
      }))

      "meta-data" = base64encode(templatefile("${path.module}/cloudinit-data/meta-data.tpl", {
        instance_id    = var.instance_id,
        local_hostname = var.local_hostname,
      }))
    }
  }

  # Wait for cloud-init to complete before Terraform considers the resource created
  wait_for_guest_net_timeout = 0
}