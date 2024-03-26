# Importación del módulo Terraform para la infraestructura de Azure
module "azure_infrastructure" {
  source = "./modules/azure_infrastructure"

  # Variables de entrada al módulo
  ubuntu_version = var.ubuntu_version
  mysql_version = var.mysql_version
  apache_version = var.apache_version
  php_version = var.php_version
  chamilo_version = var.chamilo_version
}

# Salida de la dirección IP pública de la VM
output "public_ip" {
  value = module.azure_infrastructure.public_ip
}
