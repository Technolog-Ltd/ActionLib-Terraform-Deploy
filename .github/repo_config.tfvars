description = "Composite GitHub Action for running Terraform plan and apply for a single AWS account with standard backend configuration and artifact handling."
visibility  = "public"

pro_features_enabled = false

repository_settings = {
  archive_on_destroy   = true
  vulnerability_alerts = false

  has = {
    issues   = true
    projects = true
  }

  allow = {
    merge_commit  = true
    squash_merge  = true
    rebase_merge  = true
  }
}

collaborators = {
  pull     = ["team:*"]
  push     = []
  maintain = ["Administrators"]
  admin    = []
}

features = {
  repository-control = {
    type                    = "gitflow"
    override_default_branch = "main"
  }
  pipeline-control = {
    default_branch = "main"
  }
}

topics = ["github-actions", "composite-action", "terraform", "aws", "ci-cd", "infrastructure-as-code"]

tag_protections = {
  version_tags = {
    pattern = "v*"
  }
}

environments = {
  "technolog-pipeline-deploy" = {
    can_admins_bypass = true
  }
}

import_resources = {
  repository = "ActionLibrary-Terraform-Deploy"
}
