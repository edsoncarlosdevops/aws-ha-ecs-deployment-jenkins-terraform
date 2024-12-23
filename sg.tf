resource "aws_security_group" "sg" {
  vpc_id      = aws_vpc.myvpc.id
  name        = var.sg_name
  description = "Allow all TCP traffic"

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]

  }

  tags = {
    Name = var.sg_name
  }

}