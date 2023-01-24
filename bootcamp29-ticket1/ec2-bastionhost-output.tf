/*
# AWS EC2 instance terraform output

output "bastionhost-instance-public_ids" {
  description = "list of the bastionhost public ids"
  value       = module.ec2_instance-public.id
}
# EC2 bastion host public ip
output "ec2-instance-eip" {
  description = "Elastic IP associated with the bastion host"
  value       = aws_eip.bastion_host-eip.public_ip
}


# USing the ec2-bastion-host module to output the public_ip
output "bastionhost-public_ip" {
  description = "public IP of the bastion host"
  value       = module.ec2_instance-public.public_ip
}
*/