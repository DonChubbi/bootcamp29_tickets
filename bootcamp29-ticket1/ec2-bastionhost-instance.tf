
# Bastion host ec2 instance module
module "ec2_instance-public" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "4.3.0"

  name          = "${local.name}-bastion-host"
  ami           = data.aws_ami.rehl.id
  instance_type = var.instance_type
  key_name      = var.instance_keypair
  #monitoring             = true
  vpc_security_group_ids = [module.public_bastion_sg.security_group_id]
  subnet_id              = module.first-complete-vpc.public_subnets[0]

  tags = local.common_tags
}
