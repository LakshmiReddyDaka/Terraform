# Specify the provider (AWS)
provider "aws" {
  region = "us-west-2"  # Change the region as per your requirement
}

# Create an AWS EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Replace with a valid AMI ID for your region
  instance_type = "t2.micro"  # Instance type (t2.micro is eligible for the free tier)

  tags = {
    Name = "MyFirstTerraformInstance"
  }
}

# Output the instance's public IP
output "instance_public_ip" {
  value = aws_instance.example.public_ip
}

