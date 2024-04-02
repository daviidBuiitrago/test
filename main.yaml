# main.tf

# Definición del proveedor Azure
provider "azurerm" {
  version = "~>2.0"
  # Aquí irían las configuraciones específicas del proveedor Azure
}

# Definición del módulo azure_infrastructure
module "azure_infrastructure" {
  source          = "./modules/azure_infrastructure"
  ubuntu_version  = var.ubuntu_version
  mysql_version   = var.mysql_version
  apache_version  = var.apache_version
  php_version     = var.php_version
  chamilo_version = var.chamilo_version
}

# Definición de la salida para la IP pública
output "public_ip" {
  value = module.azure_infrastructure.public_ip
}

# Recurso para programar la destrucción del ambiente después de 5 segundos
resource "null_resource" "destroy_environment" {
  # Utilizamos un recurso null_resource ya que no necesita ninguna configuración
  # Este recurso será utilizado simplemente para programar la destrucción del ambiente
  provisioner "local-exec" {
    command = "sleep 5 && terraform destroy -auto-approve"
    # El comando "sleep 5 && terraform destroy -auto-approve" espera 5 segundos y luego destruye automáticamente el ambiente
  }

  # Dependencia del recurso null_resource en la creación del módulo azure_infrastructure
  depends_on = [module.azure_infrastructure]
}
