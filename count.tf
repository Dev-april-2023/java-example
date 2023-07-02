provider "aws" {
    region = "ap-south-1"
}

resource "aws_instance" "terraform-ec2" {
    ami = "ami-0b9ecf71fe947bbdd"
    key_name = "terraform"
    instance_type = "t2.medium"
    tags = {
        Name = "EC2-Terraform ${count.index}"
    }
    count = "2"
}

output "Instance-PublicIp" {
    value = aws_instance.terraform-ec2.*.public_ip
}
