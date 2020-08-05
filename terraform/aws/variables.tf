locals {
  region = split(".", var.bootstrap_server)[1]
}

variable "instance_count" {
  type = map(string)
  default = {
    "bastion_server" = 1
    "rest_proxy"     = 1
    "kafka_connect"  = 1
    "ksql_server"    = 1
    "control_center" = 1
  }
}

variable "confluent_platform_location" {
  default = "http://packages.confluent.io/archive/5.5/confluent-5.5.1-2.12.zip"
}

variable "confluent_home_value" {
  default = "/etc/confluent/confluent-5.5.1"
}

variable "confluent_zip" {
  default = "confluent-5.5.1-2.12.zip"
}

variable "confluent_base" {
  default = "confluent-5.5.1"
}
