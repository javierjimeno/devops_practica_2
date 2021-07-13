# región de azure
variable "location" {
  type = string
  description = "Región de Azure donde crearemos la infraestructura"
  default = "West Europe"
}

# https://docs.microsoft.com/es-es/azure/cloud-services/cloud-services-sizes-specs
# tamaño de la máquina a utilizar para master
variable "vm_size_master" {
  type = string
  description = "Tamaño de la máquina virtual"
  default = "Standard_D2_v2" # 7 GB, 2 CPU, SSD 100GB
}

# tamaño de la máquina a utilizar para los otros nodos
variable "vm_size" {
  type = string
  description = "Tamaño de la máquina virtual"
  default = "Standard_D1_v2" # 3.5 GB, 1 CPU, SSD 50GB 
}

# lista con los nodos que se crearán
variable "nodos" {
  type = list(string)
  description = "Nodos"
  default = ["master", "nfs", "worker1"]
}