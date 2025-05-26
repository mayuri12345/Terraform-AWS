resource "aws_eip" "elasticip" {

  domain = "vpc"
  tags = {
    Name = "MyElasticIP"
  }
  
}