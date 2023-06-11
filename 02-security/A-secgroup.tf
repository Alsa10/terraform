provider "aws" {
 region     = "us-east-1"
 access_key = "AKIAQAMJVBPEUVELUGU3"
 secret_key = "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"

}
variable "vpc_id" {

    default = "vpc-0bb1ea46b6c4f3617"
}
resource "aws_security_group" "allowsg" {
  name        = "allowsg"
  description = "allowsge security group created with Terraform"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

}
