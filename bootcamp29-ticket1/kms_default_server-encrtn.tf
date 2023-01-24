resource "aws_kms_key" "mykey" {
  description             = "This key is used to encrypt bucket objects"
  deletion_window_in_days = 10
}

/*resource "aws_s3_bucket" "mybucket" {
  bucket = "mybucket"
}*/

resource "aws_s3_bucket_server_side_encryption_configuration" "kms-encrytion" {
  bucket = module.s3_bucket.s3_bucket_id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.mykey.arn
      sse_algorithm     = "aws:kms"
    }
  }
}