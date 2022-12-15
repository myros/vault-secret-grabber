
locals {
  secret_id = data.external.get_secret_id.result.secret_id
  errors = data.external.get_secret_id.result.errors
  data = data.external.get_secret_id.result.data
}