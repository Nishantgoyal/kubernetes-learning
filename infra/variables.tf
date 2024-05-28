variable "vpc_cidr_block" {
  default = "10.0.0.0/16"
}

variable "subnet_cidr_blocks" {
  default = {
    subnet1 = "10.0.1.0/24"
    subnet2 = "10.0.2.0/24"
    # Add more subnets if needed
  }
}
