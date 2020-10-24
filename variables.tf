## Required Vars ##
variable "name" { }
variable "region" { }
variable "vpc" { }
variable "subnet" { }
variable "ssh_key" { }

## Optional Vars ##
variable "instance_size" {
  default = "n1-standard-2"
}
variable "zone" {
  default = "b"
}
