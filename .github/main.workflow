workflow "Development Release" {
  resolves = ["make-release"]
  on = "push"
}

action "is-release-branch" {
  uses = "actions/bin/filter@master"
  args = "branch dev-release"
}

action "make-release" {
  uses = "hpi-swa-teaching/AutoTDD/github-release-action@dev-release"
  needs = ["is-release-branch"]
  env = {
    TITLE = "Development Release"
    TAG = "v3-dev"
    DESCRIPTION = "New fresh release!"
    TARGET = "dev-release"
    FILE=""
    CONTENT_TYPE=""
  }
  secrets = ["GITHUB_TOKEN"]
}
