resource "aws_dynamodb_table" "data-dynamodb" {
  name           = "data-dynamodb"
  billing_mode   = "PROVISIONED"
  read_capacity  = 2
  write_capacity = 2
  hash_key       = "name"
  range_key      = "email"

  attribute {
    name = "name"
    type = "S"
  }

  attribute {
    name = "email"
    type = "S"
  }

  tags = {
    Name        = "data-dynamodb"
    Environment = "dev"
  }
}
resource "aws_sns_topic" "user_file" {
  name = "user-file-topic"
}


