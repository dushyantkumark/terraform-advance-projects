output "aws_ec2_instance_ip" {
  value = aws_instance.py_instance.public_ip
}
output "aws_kms_key" {
  value = aws_kms_key.dynamo_key.arn
}