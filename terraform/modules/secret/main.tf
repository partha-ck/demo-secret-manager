resource "aws_secretsmanager_secret" "this" {
  name        = "demo-secrets"
  description = "secrets for demo project"

  tags = var.tags
}
