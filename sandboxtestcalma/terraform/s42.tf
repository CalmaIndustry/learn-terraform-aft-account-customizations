data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "sandbox_bucket22" {
  bucket = "aft-sandbox-223-${data.aws_caller_identity.current.account_id}"
  acl    = "private"
}
