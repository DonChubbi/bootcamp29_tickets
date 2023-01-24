# VPC module. The sample code can be accessed on registry.terraform.io
module "first-complete-vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.19.0"

  # VPC basic inputs  name = "${local.name}-${var.vpc_name}"
  name = "${var.vpc_name}-${local.environment}"
  cidr = var.vpc_cidr_block
  #azs              = var.vpc_availability_zones
  azs              = data.aws_availability_zones.azs.names
  public_subnets   = var.vpc_public_subnets
  private_subnets  = var.vpc_private_subnets
  database_subnets = var.vpc_database_subnets

  # Defining some parameters for the database subnet
  create_database_subnet_group       = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table
  # Nat Gatway for outbound communication
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway

  # VPC DNS parameters
  enable_dns_hostnames = true
  enable_dns_support   = true

  # Additional tags to subnets
  public_subnet_tags = {
    type = "public-subnets"
  }

  private_subnet_tags = {
    type = "private-subnets"
  }

  database_subnet_tags = {
    type = "database-subnets"
  }

  tags     = local.common_tags
  vpc_tags = local.common_tags
}