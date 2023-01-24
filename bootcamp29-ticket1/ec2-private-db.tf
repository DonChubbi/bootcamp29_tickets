# Bastion host ec2 instance module
module "ec2_private-db" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"

  name          = "${local.name}-db"
  ami           = data.aws_ami.rehl.id
  instance_type = var.instance_type
  key_name      = var.instance_keypair
  subnet_id = module.first-complete-vpc.private_subnets[0]

  tags = local.common_tags
}
