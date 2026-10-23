resource "aws_s3_bucket" "my_bucket" {
    bucket = var.bucket_name
    tags = {
        Name = var.environment
    }
}

resource "aws_s3_bucket" "mybucket_2" {
    bucket = var.bucket_name_2
    tags = {
        Name = var.environment
    }
}


data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }
}

resource "aws_instance" "my_instance" {
    ami           = data.aws_ami.ubuntu.id
    instance_type = var.instance_type
}