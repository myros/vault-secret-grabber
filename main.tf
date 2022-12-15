
data "external" "get_secret_id" {

  # The role is a reusable unit containing a set of Vault policies that determine which secrets an app has access to: 
  # If two apps use the same role, they will have access to the same secrets, so make sure that you create the right number of roles to provide the level of distinction you need between apps
  program = ["bash", "${path.module}/get-secret-id.sh"]
  query   = {
    api_url = var.api_url
    api_token_key = var.api_token_key
    api_token_value = var.api_token_value
    vault_approle_name = var.role_name
    vault_namespace = var.vault_namespace
  }
}
