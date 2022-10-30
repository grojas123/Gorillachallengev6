variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 3000
}

variable "alb_name" {
  description = "The name of the ALB"
  type        = string
  default     = "terraform-asg-timemgmt"
}

variable "instance_security_group_name" {
  description = "The name of the security group for the EC2 Instances"
  type        = string
  default     = "terraform-timemgmt"
}

variable "alb_security_group_name" {
  description = "The name of the security group for the ALB"
  type        = string
  default     = "terraform-timemgmt-alb"
}
