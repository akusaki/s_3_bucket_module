variable "bucket_name" {

}

variable "acl" {
  type        = string
  description = "The access control list for the S3 bucket."
  default     = "private"
}

