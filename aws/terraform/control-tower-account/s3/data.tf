data "aws_iam_policy_document" "state_bucket_policy" {
  statement {
    actions   = ["s3:*"]
    resources = ["${aws_s3_bucket.terraform_state.arn}", "${aws_s3_bucket.terraform_state.arn}/*"]

    principals {
      type        = "AWS"
      identifiers = [var.iam_role_arn]
    }
  }
}

resource "aws_s3_bucket_policy" "state_bucket_policy" {
  bucket = aws_s3_bucket.terraform_state.id
  policy = data.aws_iam_policy_document.state_bucket_policy.json
}
