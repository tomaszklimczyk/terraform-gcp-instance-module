## Required Vars ##
variable "name" { }
variable "region" { }
variable "vpc" { }
variable "subnet" { }
variable "ssh_key" { }

## Optional Vars ##
variable "instance_size" {
  default = "f1-micro"
}
variable "zone" {
  default = "b"
}