provider "aws" {
    region = "us-west-1"
    access_key = "AKIATPY2YNP4YXLPATKJ"
    secret_key = "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"
}

resource "aws_instance" "ubuntu" {
    ami = "ami-00d8a762cb0c50254"
    instance_type = "t2.micro"
    subnet_id="subnet-070c28363782d3866"
    security_groups=["sg-00ec4cd9debac6427"]
    tags = {
        "name" = "chanduinstance"
    }  
    
}
