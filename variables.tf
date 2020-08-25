variable "name" {
  type = string
}

variable "region" {
  type = string
}

variable "vpc" {
  type = string
}

variable "subnet" {
  type = string
}

variable "ssh_key" {
  type = string
}

variable "instance_size" {
  type    = string
  default = "f1-micro"
}