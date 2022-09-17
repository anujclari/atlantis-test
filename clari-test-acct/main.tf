resource "null_resource" "example" {
}

data "aws_vpc" "my_vpc" {
  tags = {
    Name = "clari-dev"
  }
}

output "my_vpc2" {
  value = data.aws_vpc.my_vpc.id
}
