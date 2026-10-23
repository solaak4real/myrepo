variable "bucket_name" {
  description = "Name of the first S3 bucket"
  type        = string
}

variable "bucket_name_2" {
  description = "Name of the second S3 bucket"
  type        = string
}

variable "environment" {
  description = "Environment tag"
  type        = string
  default     = "dev"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}