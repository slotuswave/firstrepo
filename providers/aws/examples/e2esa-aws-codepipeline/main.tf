
# terraform apply -var-file="app.tfvars" -var="createdBy=e2esa"

locals {
  tags = {
    Project     = var.project
    CreatedBy   = var.createdBy
    CreatedOn   = timestamp()
    Environment = terraform.workspace
  }
}

module "codebuild-plan" {
  source = "../../modules/e2esa-module-aws-codebuild"
  #source             = "git::https://github.com/e2eSolutionArchitect/terraform.git//providers/aws/modules/e2esa-module-aws-codebuild?ref=main"
  project_name             = var.project_name
  project_desc             = var.project_desc
  environment_compute_type = var.environment_compute_type
  environment_image        = var.environment_image
  environment_type         = var.environment_type
  source_location          = var.source_location
  # dockerhub_credentials        = var.dockerhub_credentials
  # credential_provider          = var.credential_provider
  environment_variables        = var.environment_variables
  report_build_status          = var.report_build_status
  source_version               = var.source_version
  buildspec_file_absolute_path = var.buildspec_file_absolute_path
  #vpc_id                       = var.vpc_id
  #subnets                      = var.subnets
  #security_group_ids           = var.security_group_ids
  tags                         = local.tags
}

module "codepipeline" {
  source = "../../modules/e2esa-module-aws-codepipeline"
  #source             = "git::https://github.com/e2eSolutionArchitect/terraform.git//providers/aws/modules/e2esa-module-aws-codepipeline?ref=main"
  project_name                   = var.project_name
  s3_bucket_id                   = var.s3_bucket_id
  full_repository_id             = var.full_repository_id
  codestar_connector_credentials = var.codestar_connector_credentials
  tags = local.tags
}