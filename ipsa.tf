provider "aws" {
     region = "ap-south-1"    
}

resource "aws_instance" "my-machine" {
  # Creates four identical aws ec2 instances
  count = 4
  ami = "ami-0b08bfc6ff7069aff"
  instance_type = "t2.micro"

  tags = {
    # The count.index allows you to launch a resource 
    # starting with the distinct index number 0 and corresponding to this instance.
    Name = "my-machine-${count.index}"
  }
} 
