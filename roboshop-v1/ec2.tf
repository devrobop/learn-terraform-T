resource "aws_instance" "frontend" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t3.small"
  vpc_security_group_ids = ["sg-045b2f418dac0fb0a"]

  tags = {
    Name = "frontend.dev"
  }
}

resource "aws_route53_record" "frontend" {
  zone_id = "Z09836251ISJVAKGIPMKY"
  name    = "frontend.dev.devrobo.online"
  type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "mongo" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t3.small"
  vpc_security_group_ids = ["sg-045b2f418dac0fb0a"]

  tags = {
    Name = "mongo.dev"
  }
}

resource "aws_route53_record" "mongo" {
  zone_id = "Z09836251ISJVAKGIPMKY"
  name    = "mongo.dev.devrobo.online"
  type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}

resource "aws_instance" "catalogue" {
  ami                    = "ami-09c813fb71547fc4f"
  instance_type          = "t3.small"
  vpc_security_group_ids = ["sg-045b2f418dac0fb0a"]

  tags = {
    Name = "catalogue.dev"
  }
}

resource "aws_route53_record" "catalogue" {
  zone_id = "Z09836251ISJVAKGIPMKY"
  name    = "catalogue.dev.devrobo.online"
  type    = "A"
  ttl     = 15
  records = [aws_instance.frontend.private_ip]
}