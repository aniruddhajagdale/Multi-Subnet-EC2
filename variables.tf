variable "region" {
  default = "ap-south-1"
}

data "aws_subnet_ids" "subnetID" {
  vpc_id = "vpc-fb313b93"
}



