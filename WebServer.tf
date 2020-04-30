provider "aws" {
  profile="default"
  region     = "${var.region}"

}
resource "aws_instance" "EC2_Instance" {

  for_each      = "${data.aws_subnet_ids.subnetID.ids}"
  ami           = "ami-0b1641a17487c041f"
  instance_type = "t2.micro"
  subnet_id     = "${each.value}"
  key_name      = "EC2 Key"
  tags = {
    Name = "WebServer"
  }
  iam_instance_profile = "s3-admin-access"
}


