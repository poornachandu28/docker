provider "aws" {
    region = "us-west-1"
    access_key = "AKIA2NCQBFS5K2YJB7U7"
    secret_key = "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"
}

resource "aws_instance" "ubuntu" {
    ami = "ami-06ee4e2261a4dc5c3"
    instance_type = "t2.micro"
    subnet_id="subnet-070c28363782d3866"
    security_groups=["sg-00ec4cd9debac6427"]
    tags = {
        "name" = "chanduinstance"
    }  
    
}
