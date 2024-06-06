module "ecr" {
  count = length(var.ecr_name)
  source = "terraform-aws-modules/ecr/aws"

  repository_name = var.ecr_name[count.index]
  create_lifecycle_policy	= false
  repository_image_tag_mutability = "MUTABLE"
}