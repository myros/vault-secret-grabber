output "secret_id" {
  value = local.secret_id
}

output "errors" {
  value = local.errors
}

output "data" {
  value = local.data
  sensitive = true
}
