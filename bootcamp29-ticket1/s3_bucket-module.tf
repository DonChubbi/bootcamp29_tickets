module "s3_bucket" {
  source  = "terraform-aws-modules/s3-bucket/aws"
  version = "3.6.0"

  bucket        = "${var.bootcamp_class}-${var.ticket_no}-${var.owner_name}"
  acl           = "private"
  create_bucket = true

  versioning = {
    enabled = true
  }

}
