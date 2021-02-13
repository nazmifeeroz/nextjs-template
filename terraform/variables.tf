variable "region" {
  type    = string
  default = "ap-southeast-1" # Singapore
}

variable "aws_credentials" {
  type    = string
  default = "~/.aws/credentials" # path to local aws credentials
}

variable "s3_bucket" {
  type    = string
  default = "some-random-bucket-name-aje232"
}
