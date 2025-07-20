module "vpc" {
    # source = "../terraform-aws-vpc"
    /* project = "roboshop"
    environment = "dev"
    public_subnet_cidrs = var.public_subnet_cidrs */
    source = "git::https://github.com/manojyoti434/terraform-aws-vpc.git?ref=main"
    project= var.project
    environment = var.environment
    public_subnet_cidrs = var.private_subnet_cidrs
    private_subnet_cidrs = var.public_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs
    
    is_peering_required = true

}

