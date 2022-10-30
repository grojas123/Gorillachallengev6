terraform {
  backend "s3" {
    # Replace this with your bucket name!
    bucket         = "terraform-state-timemgmt"
    key            = "global/s3/data-stores/mysql/terraform.tfstate"
    region         = "us-east-2"

    # Replace this with your DynamoDB table name!
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }

}

provider "aws" {
  region = "us-east-2"
}

resource "aws_db_instance" "timemgmt" {
  identifier_prefix   = "timemgmt"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"
  skip_final_snapshot = true

  db_name             = "database_production"

  # How should we set the username and password?
  username = var.db_username
  password = var.db_password
}
resource "aws_security_group" "aws_db_instance" {
  name = var.mysql_security_group_name

  ingress {
    from_port   = var.database_port
    to_port     = var.database_port
    protocol    = "tcp"
    cidr_blocks = ["172.31.0.0/16"]
  }
}



