variable "name" {
  description = "Name of the AWS Secrets Manager secret"
  type        = string
}

variable "description" {
  description = "Description of the secret"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags applied to the secret"
  type        = map(string)
  default     = {}
}
