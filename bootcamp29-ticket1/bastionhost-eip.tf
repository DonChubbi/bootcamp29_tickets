/*
# Assigning elastic IP to the bastion host instance
resource "aws_eip" "bastion_host-eip" {
  depends_on = [module.ec2_instance-public, module.first-complete-vpc]
  instance   = module.ec2_instance-public.id
  vpc        = true

  tags = local.common_tags
}
*/