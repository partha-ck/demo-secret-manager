locals {
  secrets = {
    prod = {
      name        = "prod-access-key"
      description = "Production access key managed by Ansible"
    }

    qa = {
      name        = "qa-access-key"
      description = "QA access key managed by Ansible"
    }

    dev = {
      name        = "dev-access-key"
      description = "Development access key managed by Ansible"
    }
  }
}

module "secrets" {
  for_each = local.secrets

  source = "./modules/secret"

  name        = each.value.name
  description = each.value.description

  tags = {
    Environment = each.key
    ManagedBy   = "terraform"
    SecretOwner = "ansible"
  }
}
