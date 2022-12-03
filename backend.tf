# Defines the remote backend for our TF state

terraform {
  backend "s3" {
    bucket = "terraform-state"
    key = "state/terraform.tfstate"
    region = "eu-central-1"
    dynamodb_table = "tf_state_locking"
    encrypt = true
  }
}