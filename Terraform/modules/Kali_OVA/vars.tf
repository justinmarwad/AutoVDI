variable "name" {
  description = "The name of the virtual machine"
  type        = string
}

variable "datacenter" {
  description = "The datacenter to deploy the virtual machine in"
  type        = string
}

variable "datastore" {
  description = "The datastore to deploy the virtual machine on"
  type        = string
}

variable "cluster" {
  description = "The cluster to deploy the virtual machine in"
  type        = string
}

variable "network" {
  description = "The network to connect the virtual machine to"
  type        = string
}

variable "cpus" {
  description = "The number of virtual CPUs to assign to the virtual machine"
  type        = number
}

variable "memory" {
  description = "The amount of memory (in MB) to assign to the virtual machine"
  type        = number
}

variable "template" {
  description = "The VM template to clone"
  type       = "string"
}

variable "vm_ip" {
  description = "The IP address to assign to the virtual machine"
  type        = string
}

variable "gateway" {
  description = "The gateway to assign to the virtual machine"
  type        = string
}

variable "dns" {
  description = "The DNS server to assign to the virtual machine"
  type        = list(string)
}