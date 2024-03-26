# Definición de variables
variable "ubuntu_version" {
  type = string
  default = "22.04"
}

variable "mysql_version" {
  type = string
  default = "8.0.36"
}

variable "apache_version" {
  type = string
  default = "2.4.41"
}

variable "php_version" {
  type = string
  default = "7.4.33"
}

variable "chamilo_version" {
  type = string
  default = "1.11.26"
}
