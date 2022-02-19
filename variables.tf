variable "ami_id" {
  type        = string
  description = "AMI: name"
  nullable    = false
}

# variable "vpc_sg_ids" {
#   type        = list(string)
#   description = "VPC: security group ids"
#   nullable    = false
# }

variable "vpc_subnet_ids" {
  type        = list(string)
  description = "VPC: list of subnet ids"
  nullable    = false
}

variable "ec2_key" {
  type        = string
  description = "EC2: public SSH key"
  nullable    = false
  sensitive   = true
}

variable "ec2_as_name" {
  type        = string
  description = "EC2 AS: name"
  default     = "target"
  nullable    = true
}

variable "ec2_size" {
  type        = string
  description = "EC2: instance type"
  default     = "t2.micro"
  nullable    = true
}

variable "ec2_as_desired_capacity" {
  type        = number
  description = "EC2 AS: desired capacity"
  default     = 1
  nullable    = true
}


variable "ec2_as_max_size" {
  type        = number
  description = "EC2 AS: max size"
  default     = 1
  nullable    = true
}

variable "ec2_as_min_size" {
  type        = number
  description = "EC2 AS: min size"
  default     = 1
  nullable    = true
}
