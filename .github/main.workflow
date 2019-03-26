workflow "New workflow" {
  on = "push"
  resolves = ["GitHub Action for Slack", "HTTP client"]
}

action "GitHub Action for Slack" {
  uses = "Ilshidur/action-slack@4f4215e15353edafdc6d9933c71799e3eb4db61c"
  secrets = ["test"]
}

action "GitHub Action for npm" {
  uses = "actions/npm@59b64a598378f31e49cb76f27d6f3312b582f680"
}

action "HTTP client" {
  uses = "swinton/httpie.action@8ab0a0e926d091e0444fcacd5eb679d2e2d4ab3d"
  needs = ["GitHub Action for npm"]
}
