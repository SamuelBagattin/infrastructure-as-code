resource "aws_instance" "example"{
    ami = var.AMI
    instance_type = "t2.micro"
    key_name = var.SSH_KEY_NAME
    tags = {
        Name = var.EC2_INSTANCE_NAME
    }
    security_groups = [
        aws_security_group.security_group.name
    ]
}

output "instance_ip" {
    value = aws_instance.example.public_ip
}

