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
  # default = "https://rcwo9e1y09.execute-api.us-east-1.amazonaws.com/dev/api/v1/get-secret-id" # python code
  default = "https://lqr59uko6i.execute-api.us-east-1.amazonaws.com/prod/get-secret-id" # Ruby Sinatra app
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


