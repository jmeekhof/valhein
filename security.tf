resource "aws_security_group" "steam_traffic" {
  name        = "steam_traffic"
  description = "Allows steam and ssh access"

  ingress {
    from_port   = 2476
    to_port     = 2478
    protocol    = "udp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
