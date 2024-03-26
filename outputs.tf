# Salida de la dirección IP pública de la VM
output "public_ip" {
  value = module.azure_infrastructure.public_ip
}
