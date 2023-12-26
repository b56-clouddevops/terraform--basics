# Calling Backend Modules 

# Calls EC2 Module
module "ec2" {
    source        = "./ec2"
    sg            = module.sg.sgid                  # Step2:  Passing the info that the module needs this variable over the root module
}


# Calls sgModulee
module "sg" {
    source  = "./sg"
}

output "public_ip" {
    value = module.ec2.public_ip
}