variable "infisical_host" {
  type        = string
  description = "The URL of your self-hosted Infisical instance"
  sensitive   = true
}

variable "infisical_token" {
  type        = string
  description = "The Infisical API token"
  sensitive   = true
}