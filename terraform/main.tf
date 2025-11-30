resource "aws_s3_bucket" "app_bucket" {
  bucket = "devops-artifacts"
}

resource "aws_dynamodb_table" "app_table" {
  name = "devops-table"
  billing_mode = "PAY_PER_REQUEST"
  hash_key = "id"
  attribute {
    name = "id"
    type = "S"
  }
}

resource "aws_iam_user" "ci_user" {
  name = "ci-user"
}

resource "aws_iam_access_key" "ci_user_key" {
  user = aws_iam_user.ci_user.name
}

output "access_key" {
  value = aws_iam_access_key.ci_user_key.id
}

output "secret_key" {
  value = aws_iam_access_key.ci_user_key.secret
  sensitive = true
}