# create a custom vpc
resource "aws_vpc" "python_vpc" {
  cidr_block = "15.0.0.0/16"
}

# create a subnets
resource "aws_subnet" "subnet_1" {
  vpc_id                  = aws_vpc.python_vpc.id
  cidr_block              = "15.0.1.0/24"
  availability_zone       = "ap-south-1a"
  map_public_ip_on_launch = true
}

# create internet gateway
resource "aws_internet_gateway" "python-igw" {
  vpc_id = aws_vpc.python_vpc.id
}

# create route table
resource "aws_route_table" "py-rt" {
  vpc_id = aws_vpc.python_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.python-igw.id
  }
}

# associate route table
resource "aws_route_table_association" "py-rta" {
  subnet_id      = aws_subnet.subnet_1.id
  route_table_id = aws_route_table.py-rt.id
}




