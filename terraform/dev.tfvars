region    = "us-east-1"
owner     = "anish.sapkota"
silo      = "intern"
project   = "ansible-docker-intro"
terraform = true

ecr_name = ["anish-docker-backend", "anish-docker-frontend", "anish-docker-database"]

instance_name               = "ecr_anish_public"
instance_type               = "t2.micro"
associate_public_ip_address = true
ssm_policy                  = "arn:aws:iam::aws:policy/service-role/AmazonEC2RoleforSSM"
ecr_policy                  = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
sg_ids                      = ["sg-0b58f156501701642"]
subnet_id                   = "subnet-0f97b0bb45cdeb3b7"
create_iam_instance_profile = true
monitoring                  = true
user_data_file              = "user_data.sh"
