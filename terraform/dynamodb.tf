resource "aws_dynamodb_table" "basic-dynamodb-table" {
  name           = "quotes"
  billing_mode   = "PROVISIONED"
  read_capacity  = 10
  write_capacity = 10
  hash_key       = "ID"

  attribute {
    name = "ID"
    type = "S"
  }

/*   attribute {
    name = "AttributedTo"
    type = "S"
  }

  attribute {
    name = "Text"
    type = "N"
  } */

  ttl {
    attribute_name = "TimeToExist"
    enabled        = false
  }

}