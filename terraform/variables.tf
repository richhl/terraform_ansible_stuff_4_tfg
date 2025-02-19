variable "network_interface_id" {
  type = string
  default = "network_id_from_aws"
}

variable "ami" {
    type = string
    default = "ami-0159d3b00698ae2f9"
}

variable "instance_type" {
    type = string
    default = "g4dn.2xlarge"
}

