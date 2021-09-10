variable "aws_region" {
  description = "AWS region where launch the infrastructure"
  type        = string
  default     = "us-east-1"
}

variable "aws_profile" {
  description = "AWS CLI profile"
  type        = string
}

variable "domain_name" {
  description = "The domain where the app will be available"
  type = string
}

variable "subdomain" {
  description = "The subdomain where the app will be available"
  type = string
}

variable "default_root_object" {
  description = "S3 default root object"
  type = string
  default = "index.html"
}

variable "price_class" {
  description = "CloudFront price Class"
  type = string
  default = "PriceClass_100"
}