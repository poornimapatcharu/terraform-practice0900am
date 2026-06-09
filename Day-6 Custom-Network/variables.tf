variable "ami_id" {
    description = "AMI ID for the EC2 instance"
    type = string
    default = ""
    
  
}
variable "instance_type" {
    description = "Instance type for the EC2 instance"
    type = string
    
  
}
variable "name" {
    description = "CIDR block for the VPC"
    type = string
    default = ""
    
  
}