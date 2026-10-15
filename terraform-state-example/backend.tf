terraform {
backend "s3" {
bucket = "terraform-state-example-210007887007"
key="dev/terraform.tfstate"
region="ap-south-1"
encrypt=true
use_lockfile=true
}
}
