output "repo" {
  description = "Repository that was created"
  value       = github_repository.repo
}

output "branch" {
  description = "Default branch for your repo"
  value       = github_branch.branch
}
