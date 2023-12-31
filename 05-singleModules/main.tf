# Root Module

provider "aws" {}

terraform {
  backend "s3" {
    bucket  = "b56-terraform-state-bucket"
    key     = "bacics/terraform.tfstate"
    region  = "us-east-1"
  }
}

# Calls backend Modules
module "local-module" {
    source      =  "./local"
}

# This is how we fetch the values from a backend Module. 
# mdoule.moduleName.outputNameDeclaredInTheBackend

output "public_ip" {
    value = module.local-module.public_ip
}