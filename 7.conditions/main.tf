resource "aws_route53_record" "frontend" {
  zone_id = "Z00376861T6KFA01SJSIS"
  name    = "frontend.dev.rdevopsb80.online"
  type    = "A"
  ttl     = var.ttl == "" ? 15 : var.ttl
  records = [aws_instance.frontend.private_ip]
}

variable "ttl" {}