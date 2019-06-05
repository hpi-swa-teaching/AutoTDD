workflow "Development Release" {
  resolves = ["make-release"]
  on = "push"
}

action "is-release-branch" {
  uses = "actions/bin/filter@master"
  args = "branch dev-release"
}

action "make-release" {
  uses = "hpi-swa-teaching/AutoTDD/github-release-action@dev"
  needs = ["is-release-branch"]
  env = {
    TITLE = "Test"
    TAG = "v3.0"
    DESCRIPTION = "Test"
    TARGET = "dev-release"
    FILE=""
    CONTENT_TYPE="text/plain"
  }
  secrets = ["GITHUB_TOKEN"]
}