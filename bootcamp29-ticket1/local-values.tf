locals {
  owners      = var.business_division
  environment = var.environment
  name        = "${var.business_division}-${var.environment}"
  # the name can also be passed below
  # name = "${locals.owners}-${locals.environment}"
  common_tags = {
    owners      = local.owners
    Environment = local.environment
  }
}