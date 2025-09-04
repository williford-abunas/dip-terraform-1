variable "region" {
  type = string
  description = "Region where VPC is created"
  default = "ap-southeast-2"
}

variable "cidr_block" {
  type = string
  description = "value of cidr block"
  default = "10.0.0.0/24"
}

variable "public_subnet_cidrs" {
 type = list(string)
 description = " value of public subnet cidrs"
default = [ "10.0.0.0/26", "10.0.0.64/26" ]
}

variable "private_subnet_cidrs" {
  type = list(string)
 description = " value of private subnet cidrs"
default = [ "10.0.0.128/26", "10.0.0.192/26" ]
}

variable "app_name" {
  type = string
  description = "value of app name"
  default = "cwc"
}