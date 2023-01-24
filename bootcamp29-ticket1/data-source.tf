# Making the input dynamic by using data source resource to dynamically fetch the inputs from the rovider (AWS)
data "aws_availability_zones" "azs" {
  #state = "available"
}

# Data source for ec2 AMI
data "aws_ami" "rehl" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["RHEL_HA-8.4.0_HVM-*-GP2"]
  }

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
}