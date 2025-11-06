provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  ami           = "ami-0866a3c8686eaeeba"  # Amazon Linux 2 HVM in us-east-1 (verify in console if needed)
  instance_type = "t2.micro"

  tags = {
    Name = "spinnaker-created-ec2"
  }
}

