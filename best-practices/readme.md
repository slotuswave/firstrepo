
# Terraform scripting Best Practices and Guidelines

Select any project of your choice from our [terraform project repo](https://github.com/e2eSolutionArchitect/terraform/tree/main/providers/) and understanding the anatomy.

## Never add connection/credentials in terraform files
- It is a big security threat. never add credentials in tf project files. 
- [Check here](https://github.com/e2eSolutionArchitect/terraform/blob/main/providers/aws/projects/template-e2esa-aws/versions.tf) how to refer connection profile for AWS cloud.
- [Check here]() for the ways to keep your connection credentials secure.

```
# provider block

provider "aws" {
  profile = "default"
  region  = var.aws_region
}
```

## Maintain project documentation

- It is a great practice to maintain documentation for every terraform project
- [Check here](https://github.com/e2eSolutionArchitect/terraform/tree/main/providers/aws/projects/template-e2esa-aws#readme) for sample documentation.
- Use [Terraform docs generator](https://github.com/e2eSolutionArchitect/terraform/blob/main/docs/terraform-docs-generator.md) for documentation.

## Infrastructure Code scanning 

- Your Terraform scripting can have vulnerability for network or infrastructure.
- Use IaC scanning tools for automated scanning
- As referance use [***Checkov***](https://github.com/e2eSolutionArchitect/terraform/tree/main/checknov) as Infrastructure code scanning for Terraform.
- Check the [tutorial nere](https://www.youtube.com/watch?v=bAkwvmZ7OGA) for how to use ***Checkov*** for Terraform code scanning.

## Resource tagging standards & techniques
- Every resource must be tagged appropriately with its assocoated project, org unit, cost center and environment. 
- It is great to have createdby and createdon tags also. 
- Tagging is most useful for resource filtering and cost analysis. 

```
locals {
  name = "${var.project}-${var.prefix}"
  tags = {
    project      = var.project
    orgunit      = var.org_unit
    businessunit = var.business_unit
    costcenter   = var.cost_center
    createdby    = var.createdby
    createdon    = timestamp()
    appid        = var.appid
    environment  = terraform.workspace
  }
}

```
***add tags for resources***
```
tags        = merge({ "resourcename" = "${local.name}-${var.suffix}" }, local.tags)
```

## Use module for every commonly used components

```
module "acm" {
 # Import module from local
  source = "../../modules/e2esa-module-aws-acm"
 # Import module from remote git
  source             = "git::https://github.com/e2eSolutionArchitect/terraform.git//providers/aws/modules/e2esa-module-aws-acm?ref=main"
  
```

## Never share/commit your '*.tfvars' in public repository 

- If you are using public repository for your terraform repo then make sure you have *.tfvars restricted in .gitignore file. 
- e2eSA provided project's [app_tfvars](https://github.com/e2eSolutionArchitect/terraform/blob/main/providers/aws/projects/e2esa-aws-acm/app_tfvars) has all variables but dummy values. It is asked to rename the file to app.tfvars and add your values for the mentioned variables. 
- If you are using  private repository used by authorized people only then no issue. 

