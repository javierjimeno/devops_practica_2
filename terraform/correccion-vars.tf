# storage account de azure
variable "storage_account" {
  type = string
  description = "Nombre para la storage account"
  default = "jjvsstorageaccount1"
}

# clave pública para conectar por SSH
variable "public_key_path" {
  type = string
  description = "Ruta para la clave pública de acceso a las instancias"
  default = "~/.ssh/id_rsa.pub"
}

# usuario de la conexión SSH
variable "ssh_user" {
  type = string
  description = "Usuario para hacer ssh"
  default = "ansible_user"
}
