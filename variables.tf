variable "vpc_name" {
  description "Value of the Name tag for the VPC cloud"
  type = string
  default = "prod-vpc"
}

variable "rt_name" {
  description "Value of the Name tag for the public route table"
  type = string
  default = "prod-public-table"
}

variable "subnet_name" {
  description "Value of the Name tag for the public subnet"
  type = string
  default = "prod-subnet"
}

variable "web_sg_name" {
  description "Value of the Name tag for the web security group"
  type = string
  default = "allow_web"
}

variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "web-server"
}
