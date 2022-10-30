variable "db_username" {
  description = "The username for the database"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "The password for the database"
  type        = string
  sensitive   = true
}
variable "mysql_security_group_name" {
  description = "The name of the security group for the MYSQL database"
  type        = string
  default     = "terraform-timemgmt"
}
variable "database_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 3306
}