Terraform AWS EC2 Module

This Terraform module provisions an EC2 instance in your AWS environment.
It is reusable and designed for environments like joindevops.

🔹 Module Inputs
Name	Type	Default	Description
ami_id	string	ami-09c813fb71547fc4f	AMI ID to use for the instance. Optional; default is devops-practice.
instance_type	string	t3.micro	EC2 instance type. Optional; allowed values: t3.micro, t3.small, t3.medium.
sg_ids	list	-	List of Security Group IDs to attach to the instance. Required.
tags	map	-	Key-value map of tags to apply to the instance. Required.
🔹 Module Outputs
Name	Description
instance_id	The ID of the EC2 instance created
public_ip	Public IP assigned to the instance
private_ip	Private IP assigned to the instance
🔹 Example Usage
module "ec2" {
  source        = "git::https://github.com/rajesh1816/terraform-aws-instance.git"

  ami_id        = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  sg_ids        = ["sg-0123456789abcdef0"]
  tags = {
    Name        = "EC2-Test"
    Environment = "dev"
  }
}

output "instance_id" {
  value = module.ec2.instance_id
}

output "public_ip" {
  value = module.ec2.public_ip
}

output "private_ip" {
  value = module.ec2.private_ip
}

🔹 Notes

The module requires existing networking resources (VPC, subnets, security groups).

Only variables and outputs defined in the module are exposed to the root module.

Use this module across different environments by adjusting instance_type and tags
