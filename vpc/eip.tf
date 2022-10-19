resource "aws_eip" "eip" {
  vpc = true
  depends_on = [
    aws_internet_gateway.dev-igw //to set explicit dependency on the igw
  ]
}
