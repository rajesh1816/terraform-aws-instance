variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "ami_id of the joindevops"
}

variable "instance_type" {
    type = string
    default = "t2.micro"
    description = "size of the instance"
}

#mandatory to give sg_ids
variable "sg_ids" {
    type = list
}   


#mandatory to give ec2 tags
variable "ec2_tags" {
    type = map
}