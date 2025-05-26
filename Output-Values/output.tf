resource "aws_eip" "elasticip" {

  domain = "vpc"
  tags = {
    Name = "MyElasticIP"
  }
  
}
output "public-ip" {
 // value = aws_eip.elasticip
//  value = aws_eip.elasticip.public_ip
value = "https://${aws_eip.elasticip.public_ip}:8080"
}

