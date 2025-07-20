module "vpc" {
    # source = "../terraform-aws-vpc"
    /* project = "roboshop"
    environment = "dev"
    public_subnet_cidrs = var.public_subnet_cidrs */
    source = "git::https://github.com/manojyoti434/terraform-aws-vpc.git?ref=main"

    # above line is calling module  process will be done in practical, if we run reconfigure and plan then it will stores all module files into this folder for reference# 
    # bucket should be created   manually before doing it #
    project= var.project
    environment = var.environment
    public_subnet_cidrs = var.private_subnet_cidrs
    private_subnet_cidrs = var.public_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    
    is_peering_required = true

}

