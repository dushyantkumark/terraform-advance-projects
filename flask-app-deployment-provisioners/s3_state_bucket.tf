resource "aws_s3_bucket" "py_bucket" {
  bucket = var.s3_bucket_name
}


resource "aws_s3_bucket_versioning" "versioning_s3" {
  bucket = aws_s3_bucket.py_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}  