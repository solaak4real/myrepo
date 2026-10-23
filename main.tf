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


resource "aws_instance" "my_instance" {
    ami           = "ami-02167eae61967e403"
    instance_type = var.instance_type
}