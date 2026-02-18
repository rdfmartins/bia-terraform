terraform {
  # Versão do Terraform
   required_version = "~> 1.14.0" 

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #versão do provider aws
      version = "~> 6.0" 
    }
  }
}

#provider do tipo aws
provider "aws" {
  region  = "us-east-1"
  profile = "rodolfo"
}

#recurso do tipo aws_instance
#criando uma instância EC2
resource "aws_instance" "bia-dev" {
  ami           = "ami-02f3f602d23f1659d"
  instance_type = "t3.micro"
  tags = {
    Name = "bia-dev-ec2"
    Environment = "dev"
    Owner = "Rodolfo"
    Project = "bia-terraform"
    Created_by = "Terraform"
      }
}