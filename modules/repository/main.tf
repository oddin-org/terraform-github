terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
  }
}

resource "github_repository" "repo" {
  name        = var.name
  description = var.description
  topics      = var.topics
  visibility  = "public"

  has_issues = true
  has_wiki   = false

  auto_init              = true
  allow_auto_merge       = true
  allow_merge_commit     = false
  allow_squash_merge     = true
  allow_rebase_merge     = true
  delete_branch_on_merge = true
}

resource "github_branch" "branch" {
  repository = github_repository.repo.name
  branch     = "main"
}

resource "github_branch_default" "default" {
  repository = github_repository.repo.name
  branch     = github_branch.branch.branch
}
