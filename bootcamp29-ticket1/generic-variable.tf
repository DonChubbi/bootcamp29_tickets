# Input variables

#AWS region
variable "aws_region" {
  description = "Region hosting the EC2 instances"
  type        = string
  default     = "us-east-2"
}

# Environment variable
variable "environment" {
  description = "Environment variable used as a prefix"
  type        = string
  default     = "dev"
}

# Business Division
variable "business_division" {
  description = "Business division in the larg organisation"
  type        = string
  default     = "IT"
}