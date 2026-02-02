provider "aws" {
  region = "ap-south-1"
}


# IAM User
resource "aws_iam_user" "user" {
  name = var.iam_user_name
}


# IAM Policy

data "aws_iam_policy" "s3_read_policy" {
  name = "S3ReadOnlyCustomPolicy"
}

resource "aws_iam_user_policy_attachment" "attach" {
  user       = aws_iam_user.user.name
  policy_arn = data.aws_iam_policy.s3_read_policy.arn
}

# Attach policy to user

resource "aws_iam_user_policy_attachment" "attach_policy" {
  user       = aws_iam_user.user.name
  policy_arn = data.aws_iam_policy.s3_read_policy.arn
}


