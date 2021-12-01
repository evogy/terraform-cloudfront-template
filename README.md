# terraform-cloudfront-template
This terraform project provides a ready to use module to create an infrastracture for a Single Page Web Application.
In details, this module create:
 - A S3 bucket where the application file will be stored
 - A Cloudfront distribution with the prevoius S3 bucket as Origin
 - An Origin Access Identity policies from Cloudfront to the S3 Bucket
 - A public certificate attached to te distribution
 - A Route53 record linked to the distribution


## Prerequisite
You must have:
 - an AWS account
 - a working settings configuration in the `~/.aws`
 - a registered domain in Route53

## How run it
Clone this repo and insert in the `terraform.tfvars` the missing variables `aws_profile`, `domain_name` and `subdomain`

After that run `terraform init` in order to download all the dependecies

Run `terraform plan` and make sure there is no mistake

Finally run `terraform apply` and confirm

![terraform cloundfront (1)](https://user-images.githubusercontent.com/15108431/136656205-5a955b1e-e3b4-41e9-babb-06aa9bc1cd85.png)
