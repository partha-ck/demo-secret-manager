output "secret_arns" {
  description = "ARNs of the AWS Secrets Manager secrets"

  value = {
    for environment, secret in module.secrets :
    environment => secret.arn
  }
}

output "secret_names" {
  description = "Names of the AWS Secrets Manager secrets"

  value = {
    for environment, secret in module.secrets :
    environment => secret.name
  }
}
