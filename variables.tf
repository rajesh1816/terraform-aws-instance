variable "ami_id" {
  type        = string
  default     = "ami-09c813fb71547fc4f"
  description = "ami_id of the joindevops"
}

variable "instance_type" {
    default = "t3.micro"
    type = string
    description = "Instance size"

    validation {
        condition     = contains(["t3.micro", "t3.small", "t3.medium"], var.instance_type)
        error_message = "Valid values for instance_type are: t3.micro, t3.small, t3.medium"
    } 
}

#mandatory to give sg_ids
variable "sg_ids" {
  type = list(any)
}


#mandatory to give ec2 tags
variable "ec2_tags" {
  type = map(any)
}