locals {
  repositories = {
    terraform_github = {
      name        = "terraform-github",
      description = "Basic structure for our github",
      topics      = ["terraform", "github"]
    },
    kct = {
      name        = "kct",
      description = "Kubernetes Configuration Tool",
      topics      = ["kubernetes", "rust", "jsonnet"]
    },
    api = {
      name   = "api",
      topics = ["api", "ruby-on-rails"]
    }
    web = {
      name   = "web",
      topics = ["angular", "express", "webpack", "pug"]
    },
    setup = {
      name        = "development-setup",
      description = "Ansible Playbook to install daily development tools",
      topics      = ["ansible"]
    },
    local_env = {
      name        = "local-environment",
      description = "Development setup to mimic production as close as possible",
      topics      = ["jsonnet", "kind", "contour", "kubecfg", "cert-manager"]
    },
    questions_aggregator = {
      name = "questions-aggregator"
    },
    ios = {
      name = "ios"
    },
    android = {
      name = "android"
    }
  }
}

module "repositories" {
  source = "./modules/repository"

  for_each = local.repositories

  name        = each.value.name
  description = lookup(each.value, "description", null)
  topics      = lookup(each.value, "topics", null)
}
