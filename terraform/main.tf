module "ecr" {
  count = length(var.ecr_name)
  source = "terraform-aws-modules/ecr/aws"

  repository_name = var.ecr_name[index].value
  create_lifecycle_policy	= false
}