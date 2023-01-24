# security group attached to the ec2 bastion host
module "public_bastion_sg" {
  source = "terraform-aws-modules/security-group/aws"

  name        = "${local.name}-public-bastion-sg"
  description = "Security group for the bastion host with HTTP SSH port open from anywhere"
  vpc_id      = module.first-complete-vpc.vpc_id

  # Ingress rules and CIDR blocks
  ingress_rules       = ["ssh-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  # egress rule
  egress_rules = ["all-all"]

  tags = local.common_tags
}