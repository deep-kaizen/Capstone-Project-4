output "iam_user_name" {
  value = aws_iam_user.user.name
}

output "policy_arn" {
  value = data.aws_iam_policy.s3_read_policy.arn
}


