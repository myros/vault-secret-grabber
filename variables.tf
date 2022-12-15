variable api_token_key {
  type        = string
  default = "X-Authorization-Token"
  description = "API Autorization Token"
}

variable api_token_value {
  type        = string
  description = "API Autorization Token"
}

variable api_url {
  type        = string
  description = "API URL"
}

variable role_name {
  type        = string
  description = "AppRole Role name"
}

variable vault_namespace {
  type        = string
  default     = "root"
  description = "Vault Namespace"
}


