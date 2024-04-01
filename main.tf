azure_infrastructure:
  source: "./modules/azure_infrastructure"
  ubuntu_version: "${var.ubuntu_version}"
  mysql_version: "${var.mysql_version}"
  apache_version: "${var.apache_version}"
  php_version: "${var.php_version}"
  chamilo_version: "${var.chamilo_version}"
 
public_ip:
  value: "${module.azure_infrastructure.public_ip}" module.azure_infrastructure.public_ip
}
