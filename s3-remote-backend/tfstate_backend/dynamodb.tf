# Dynamo DB to support TF state locking

resource "aws_dynamodb_table" "tf_locks" {
    name = "tf_state_locking"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
}