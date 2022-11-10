module "policy" {
  source = "./policy"

  policy_name = var.policy_name
  policy_code = var.policy_code
}

module "snapshots" {
  source = "./snapshots"
}
