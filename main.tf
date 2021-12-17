terraform {
	required_providers {
		github = {
			source  = "integrations/github"
			version = "~> 4.0"
		}
	}
}

provider "github" {
	owner = "oddin-org"
}

resource "github_membership" "admin" {
  username = "bruno-delfino1995"
  role = "admin"
}

module "terraform_github_repo" {
	source = "./modules/repo"

	name = "terraform-github"
	description = "Basic structure for our github"
	topics = ["terraform", "github"]
}

module "kct_repo" {
	source = "./modules/repo"

	name = "kct"
	description = "Kubernetes Configuration Tool"
	topics = ["kubernetes", "rust", "jsonnet"]
}

module "web_repo" {
	source = "./modules/repo"

	name = "web"
	topics = ["angular", "express", "webpack", "pug"]
}

module "setup_repo" {
	source = "./modules/repo"

	name = "development-setup"
	description = "Ansible Playbook to install daily development tools"
	topics = ["ansible"]
}

module "local_env_repo" {
	source = "./modules/repo"

	name = "local-environment"
	description = "Development setup to mimic production as close as possible"
	topics = ["jsonnet", "kind", "contour", "kubecfg", "cert-manager"]
}

module "api_repo" {
	source = "./modules/repo"

	name = "api"
	topics = ["api", "ruby-on-rails"]
}

module "questions_aggregator_repo" {
	source = "./modules/repo"

	name = "questions-aggregator"
}

module "ios_repo" {
	source = "./modules/repo"

	name = "ios"
}

module "android_repo" {
	source = "./modules/repo"

	name = "android"
}
