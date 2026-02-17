terraform {
   required_version = "~> 1.14.0" 

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      # Versão do Provedor AWS (quem entende os comandos da Amazon)
      version = "~> 6.0" 
    }
  }
}

provider "aws" {
  region  = "us-east-1"
  profile = "rodolfo"
}