
# Remote state data source
data "terraform_remote_state" "network" {
  backend = "s3"
  config = {
    bucket = "bootcamp29-1-chibuike"
    key    = "bootcamp29-ticket1/terraform.tfstate"
    region = "us-east-2"
  }
}
