# Virtual Machine configuration
# datacenter object
variable "datacenter" {}
variable "cluster" {}
variable "datastore" {}
variable "domain" {}
variable "netmask" {}
variable "hostname" {}

# VM Name
variable "name" {}

# Name of OVA template (chosen in import process)
variable "template" {}

# VM Network 
variable "network" {}

# VM Number of CPU's
variable "cpus" {}

# VM Memory in MB
variable "memory" {}

variable "vm_pass" {}

variable "ssh_key" {}

variable "vm_user" {}

variable "vm_ip" {}

variable "gateway" {}

variable "dns" {}