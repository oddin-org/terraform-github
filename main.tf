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
  role     = "admin"
}
