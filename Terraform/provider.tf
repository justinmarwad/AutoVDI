# provider.tf

## Vcenter Vars ## 
variable "user" {}
variable "password" {}
variable "vsphere_server" {}
variable "datacenter" {}
variable "cluster" {}
variable "datastore" {}

## VM Vars ## 
variable "vm_pass" {}
variable "vm_user" {}
variable "ssh_key" {} 

## Provider Init ## 
provider "vsphere" {
  user           = "${var.user}"
  password       = "${var.password}"
  vsphere_server = "${var.vsphere_server}" 

  allow_unverified_ssl = true
}

