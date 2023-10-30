terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.23.1"
    }
  }

  backend "remote" {
    organization = "sogari"

    workspaces {
      name = "aws-infra"
    }
  }
}

provider "aws" {
}