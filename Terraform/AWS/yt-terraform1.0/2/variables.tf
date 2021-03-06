variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
  default     = "diogofernandesnew-bucket"
}
variable "env" {
  description = "Environment where this module is invoked."
  type        = string
  default     = "development"
}
variable "aws_region" {
  description = "aws region"
  type        = string
  default     = "us-east-2"
}

