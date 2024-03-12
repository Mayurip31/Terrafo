#Modules

In Terraform, a module is a collection of Terraform files (such as main.tf, variable.tf, output.tf) grouped together to define a set of infrastructure resources. 

These files serve specific purposes:

1. main.tf: Contains the main configuration for defining and provisioning resources.

2. variable.tf: Defines input variables that can be parameterized to make the configuration more flexible.

3. output.tf: Specifies the output values that should be exposed after the resources are provisioned.

4. var_data.auto.tfvars: A file that can be used to set variable values, providing a way to customize
inputs without modifying the main configuration files.