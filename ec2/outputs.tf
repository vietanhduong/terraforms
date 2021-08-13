output "ip_address" {
  value = aws_eip.default.public_ip
}