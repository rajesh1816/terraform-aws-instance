# AWS EC2 Instance

You can create an EC2 instance in `joindevops` using this module.

---

## Inputs

- **ami_id** (Optional) – AMI ID to use for the instance. Default is `devops-practice` i.e., `ami-09c813fb71547fc4f`
- **instance_type** (Optional) – EC2 instance type. Valid values: `t3.micro`, `t3.small`, `t3.medium`. Default is `t3.micro`
- **sg_ids** (Required) – A list of Security Group IDs to attach to the instance
- **tags** (Required) – A map of tags to associate with the instance

---

## Outputs

- **public_ip** – Public IP of the instance created
- **private_ip** – Private IP of the instance created
- **instance_id** – EC2 instance ID of the instance created

---

## Example Usage

```hcl
module "ec2" {
  source        = "git::https://github.com/rajesh1816/terraform-aws-instance.git"
  ami_id        = "ami-09c813fb71547fc4f"
  instance_type = "t3.micro"
  sg_ids        = ["sg-0123456789abcdef0"]
  tags = {
    Name        = "MyEC2Instance"
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
