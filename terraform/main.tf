provider "aws" {
    region = "us-east-1"
}

variable "name1" {
    description = "Name the 1st instance on deploy"
}

variable "name2" {
    description = "Name the 2nd instance on deploy"
}

resource "aws_instance" "devops_01" {

    ami = "ami-053b0d53c279acc90"

    instance_type = "t2.micro"

    # Note that these keys are region specific, and therefore you need to create
    # the key in the same region that you define above (us-east-1 in this case)
    key_name = "devops_01_keypair"

    tags = {
        
        Name = "${var.name1}"
    }
}

resource "aws_instance" "web" {

    ami = "ami-053b0d53c279acc90"

    instance_type = "t2.micro"

    # Note that these keys are region specific, and therefore you need to create
    # the key in the same region that you define above (us-east-1 in this case)
    key_name = "devops_01_keypair"

    tags = {
        
        Name = "${var.name2}"
    }
}