setting vairable in Command Line
terraform plan -var="instance_type=m5.large"

setting variable via environment variables in WINDOWS
proper naming convention
terraform searches the environment of its own process for environment variables named
TF_VAR_followed by the name of a declared variable.

echo %TF_VAR_instance_type%

****************************************************************************************************

setting variable via environment variables in LINUX
export TF_VAR_instance_type=m5.large
echo $TF_VAR_instance_type

*****************************************************************************************************

Variable Definition Prcedence

