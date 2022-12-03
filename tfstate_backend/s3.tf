# Defines the S3 bucket to be used for storing TF state

resource "aws_s3_bucket" "terraform_state" {
    bucket = "terraform-state"
    lifecycle {
      # prevent accidental deletion of this bucket
      prevent_destroy = true
    }
}

resource "aws_s3_bucket_versioning" "terraform_state_versioning" {
  bucket = aws_s3_bucket.terraform_state.id
  versioning_configuration {
    status = "Enabled"
  }
}

# encrypt the bucket
resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_state_encryption" {
  bucket = aws_s3_bucket.terraform_state.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
  }
}