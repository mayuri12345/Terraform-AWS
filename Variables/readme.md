In Terraform, variables allow you to make your code reusable, flexible, and configurable. Instead of hardcoding values, you define variables and then assign values at runtime or through files.

🔹 1. Types of Variables
Terraform supports these types:

Type	Example Values
string	"us-east-1"
number	10 or 3.14
bool	true or false
list	["a", "b", "c"]
map	{ key1 = "value1", key2 = "value2" }
object	{ name = string, age = number }
tuple	[string, number, bool]

🔹 2. Defining a Variable
In variables.tf:


variable "region" {
  description = "The AWS region to deploy to"
  type        = string
  default     = "us-east-1"
}

🔹 3. Using a Variable
In main.tf:


provider "aws" {
  region = var.region
}

🧠 Best Practices
Always declare variables in variables.tf

Keep values in terraform.tfvars or *.auto.tfvars

Use sensitive = true for secrets like passwords or keys

Use validation block to restrict values



✅ Benefits of Using Variables in Terraform
1. 🔁 Reusability
Variables allow you to reuse the same Terraform configuration across different environments (e.g., dev, test, prod) by simply changing variable values.

Instead of duplicating code for each environment, define variables and change only their values.

2. ⚙️ Flexibility
You can customize deployments without touching the main code—just update variable values via .tfvars, CLI, or environment variables.

Example: Switch regions, instance types, or names dynamically.

3. 🔐 Security
By marking variables as sensitive, Terraform can hide secrets like passwords or API keys from logs and console output.


variable "db_password" {
  type      = string
  sensitive = true
}

4. 📦 Separation of Concerns
Variables help separate configuration (what you deploy) from inputs (how you deploy). This keeps your Terraform code clean and organized.

5. 💬 Documentation
Terraform variables allow you to add descriptions, which serve as inline documentation for users or teams consuming your modules.


variable "instance_type" {
  description = "Type of EC2 instance to use"
  type        = string
  default     = "t2.micro"
}
6. 🧪 Testing and Staging
Easily test different scenarios by passing different variable values—helpful for CI/CD pipelines or experimentation.

7. 🧱 Modularization
Variables are essential when building Terraform modules, making them truly pluggable and configurable.

8. 🚫 Avoid Hardcoding
Variables eliminate hardcoding, making your infrastructure code more dynamic and adaptable to change.