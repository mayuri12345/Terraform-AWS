if variable default value is there and tfvars doesnt have any value--- > it will take variable default value 

If both(variable default value and tfvars value) are present---> it will take tfvars value

terraform bydefault searches for terraform.tfvars - if we give any other name than that like dev.tfcars or prod.tfvars - > it asks us specify manually at run time like this----

D:\Terraform-AWS\tfvars>terraform plan
var.ami
  This ami id is for us-east-1 region

  Enter a value:

  