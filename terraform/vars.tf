# región de azure
variable "location" {
  type = string
  description = "Región de Azure donde crearemos la infraestructura"
  default = "West Europe"
}

# tamaño de la máquina a utilizar
variable "vm_size" {
  type = string
  description = "Tamaño de la máquina virtual"
  default = "Standard_D1_v2" # 3.5 GB, 1 CPU 
}

# lista con los nodos que se crearán
variable "nodos" {
  type = list(string)
  description = "Nodos"
  default = ["master", "nfs", "worker1", "worker2"]
}