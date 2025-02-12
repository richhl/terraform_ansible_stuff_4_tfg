variable "network_interface_id" {
  type = string
  default = "network_id_from_aws"
}

variable "ami" {
    type = string
    default = "ami-06bfcdf6c8ba112e7"
}

variable "instance_type" {
    type = string
    default = "c5a.8xlarge"
}

