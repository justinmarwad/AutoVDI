variable "user" {
  description = "Username for vm"
  type        = string
  default     = "user" 
}

variable "password" {
  description = "Password for vm. Must be hashed. Use 'openssl passwd -1 <password>' to generate hash."
  type        = string
}

variable "ssh_authorized_keys" {
  description = "SSH public key for vm"
  type        = string
}

variable "vm_ipv4_address" {
  description = "IPv4 address for the VM"
  type        = string
}

variable "vm_ipv4_gateway" {
  description = "IPv4 gateway for the VM"
  type        = string
}

variable "instance_id" {
  description = "Instance ID for the VM"
  type        = string
}

variable "local_hostname" {
  description = "Local hostname for the VM"
  type        = string
  default     = "server"
}

variable "resource_cpu" {
  description = "CPU resources for the VM"
  type        = number
  default     = 2
}

variable "resource_memory" {
  description = "Memory resources for the VM"
  type        = number
  default     = 4096
}

variable "resource_disk" {
  description = "Disk size for the VM"
  type        = number
  default     = 20
}
