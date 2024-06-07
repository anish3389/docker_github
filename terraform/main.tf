module "ecr" {
  count = length(var.ecr_name)
  source = "terraform-aws-modules/ecr/aws"

  repository_name = var.ecr_name[count.index]
  create_lifecycle_policy	= false
  repository_image_tag_mutability = "MUTABLE"
}

module "ec2" {
  source                      = "terraform-aws-modules/ec2-instance/aws"
  version                     = "5.5.0"
  instance_type               = var.instance_type
  ami                         = var.ami_id
  monitoring                  = var.monitoring
  associate_public_ip_address = var.associate_public_ip_address
  vpc_security_group_ids      = var.sg_ids
  subnet_id                   = var.subnet_id
  create_iam_instance_profile = var.create_iam_instance_profile
  iam_role_description        = "SSM Role for accessing EC2 instance"

  iam_role_policies = {
    SSM = var.ssm_policy
    ECR = var.ecr_policy
  }

  tags = {
    Name = var.instance_name
  }
}

