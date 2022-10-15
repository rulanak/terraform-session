# Using Terraform
![image](https://user-images.githubusercontent.com/107318829/195968581-d2097428-ac78-43eb-8b51-84f22c7cde53.png)


## What is Terraform?
Terraform is an infrastructure as code (IaC) tool that allows you to build, change, and version infrastructure safely and efficiently.
***
## Why Terraform?
Terraform allows us create another version of infrastructure by pushing it to production stage to check and test if its up and running perfectly and then remove from production first (former) version of infrastructure. *it is a safer way to make changes on infrastructure than doing it with automation configuration tool (mutable infrastructure)*
***

## Getting Started
For documentation, please, follow up the links from Terraform official website:
- [Introduction](https://www.terraform.io/intro)
- [Documentation](https://www.terraform.io/docs)

**Terraform syntax**
The syntax of the Terraform language consists of only a few basic elements:
```
resource "aws_vpc" "main" {
  cidr_block = var.base_cidr_block
}

<BLOCK TYPE> "<FIRST_BLOCK LABEL>" "<SECOND_BLOCK LABEL>" {
  # Block body
  <IDENTIFIER> = <EXPRESSION> # Argument
}
```
> When we touch logical name/id (second label) terraform will treat it as a new resource
> Identifier is already predefined by Terraform, but we can give any xpression we want
