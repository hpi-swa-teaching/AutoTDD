workflow "Development Release" {
  resolves = ["make release"]
  on = "push"
}

action "branch filter" {
  uses = "actions/bin/filter@dev-release"
}

action "make release" {
  uses = "frankjuniorr/github-create-release-action@master"
  needs = ["branch filter"]
  env = {
    VERSION = "Test"
    DESCRIPTION = "Test"
  }
}
