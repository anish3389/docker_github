# Argument Reference for the project
################################################################################

variable "region" {
  description = "Region be used for all the resources"
  type        = string
  default     = "us-east-1"
}

variable "project" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = "ansible_intro"
}

variable "terraform" {
  description = "Name to be used on all the resources as identifier"
  type        = bool
  default     = true
}

variable "owner" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

variable "silo" {
  description = "Name to be used on all the resources as identifier"
  type        = string
  default     = ""
}

# Argument Reference for ECR
################################################################################

variable "ecr_name" {
  description = "List of ECRs"
  type = list(string)
  default = []
}

# Argument Reference for EC2
################################################################################

variable "ami_id" {
  description = "AMI of the server (Default is Ubuntu 22.04)"
  type        = string
  default     = "ami-012485deee5681dc0"
}

variable "instance_type" {
  description = "Instance Type"
  type        = string
  default     = "t2.nano"
}

variable "sg_ids" {
  description = "Security Group ID for the instance"
  type        = list(string)
  default     = []
}

variable "subnet_id" {
  description = "Subnet ID where instance will be placed"
  type        = string
  default     = ""
}

variable "monitoring" {
  description = "Whether to enable monitoring for the server"
  type        = bool
  default     = false
}

variable "associate_public_ip_address" {
  description = "Whether to associate public ip to the server"
  type        = bool
  default     = false
}

variable "create_iam_instance_profile" {
  description = "Whether to create IAM Instance profile and attach to the server"
  type        = bool
  default     = false
}

variable "ssm_policy" {
  description = "Attach SSM policy to the server"
  type        = string
  default     = ""
}

variable "ecr_policy" {
  description = "Attach SSM policy to the server"
  type        = string
  default     = ""
}

variable "instance_name" {
  description = "Name of the instance"
  type        = string
  default     = ""
}