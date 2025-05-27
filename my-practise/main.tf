resource "aws_instance" "example" {
   ami="ami-0953476d60561c955"
    instance_type= var.instance_type
  
}
output "selected_instance_type" {
  value = var.instance_type
}
