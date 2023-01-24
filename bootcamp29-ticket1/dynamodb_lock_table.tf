# DynamoDB table resource 
resource "aws_dynamodb_table" "statefile-lock" {
  name           = "terraform-lock"
  hash_key       = "LockID"
  read_capacity  = 4
  write_capacity = 4
  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name = "Terraform Lock Table"
  }
  lifecycle {
    prevent_destroy = false
  }
}