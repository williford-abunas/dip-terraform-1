variable "region" {
  type = string
  description = "Region where VPC is created"
}

variable "cidr_block" {
  type = string
  description = "value of cidr block"
}

variable "public_subnet_cidrs" {
  type = list(string)
  description = " value of public subnet cidrs"
}

variable "private_subnet_cidrs" {
  type = list(string)
  description = " value of private subnet cidrs"
}

variable "app_name" {
  type = string
  description = "value of app name"
}