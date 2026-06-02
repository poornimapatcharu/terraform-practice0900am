output "instance_publicip" {
    value = aws_instance.name.public_ip
  
}

output "instance_privateip" {
    value = aws_instance.name.private_ip

  
}

output "subnet_id" {
    value = aws_instance.name.subnet_id
  
}