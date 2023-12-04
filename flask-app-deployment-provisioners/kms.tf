resource "aws_kms_key" "dynamo_key" {
  description             = "used in dynamo-db KMS Key"
  deletion_window_in_days = 7
  enable_key_rotation     = true

  tags = {
    Name        = "dynamo-Key"
    Environment = "Dev"
  }
}