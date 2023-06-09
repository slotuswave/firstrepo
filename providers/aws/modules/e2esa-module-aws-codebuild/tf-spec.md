## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.5.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_codebuild_project.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project) | resource |
| [aws_iam_policy.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_policy) | resource |
| [aws_iam_role.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |
| [aws_iam_role_policy_attachment.attachment1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.attachment2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_policy_document.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_artifacts_type"></a> [artifacts\_type](#input\_artifacts\_type) | Artifacts type | `string` | `"CODEPIPELINE"` | no |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | AWS infrastructure regio | `string` | `null` | no |
| <a name="input_build_timeout"></a> [build\_timeout](#input\_build\_timeout) | Build Timeout | `string` | `"5"` | no |
| <a name="input_buildspec_file_absolute_path"></a> [buildspec\_file\_absolute\_path](#input\_buildspec\_file\_absolute\_path) | buildspec\_file\_absolute\_path | `string` | `"./buildspec/buildspec.yml"` | no |
| <a name="input_credential_provider"></a> [credential\_provider](#input\_credential\_provider) | credential\_provider | `string` | `"SECRETS_MANAGER"` | no |
| <a name="input_cw_group_name"></a> [cw\_group\_name](#input\_cw\_group\_name) | cw\_group\_name | `string` | `null` | no |
| <a name="input_cw_stream_name"></a> [cw\_stream\_name](#input\_cw\_stream\_name) | cw\_stream\_name | `string` | `null` | no |
| <a name="input_dockerhub_credentials"></a> [dockerhub\_credentials](#input\_dockerhub\_credentials) | dockerhub\_credentials | `string` | `null` | no |
| <a name="input_environment_compute_type"></a> [environment\_compute\_type](#input\_environment\_compute\_type) | environment\_compute\_type | `string` | `"BUILD_GENERAL1_SMALL"` | no |
| <a name="input_environment_image"></a> [environment\_image](#input\_environment\_image) | environment\_image | `string` | `null` | no |
| <a name="input_environment_type"></a> [environment\_type](#input\_environment\_type) | environment\_type | `string` | `null` | no |
| <a name="input_environment_variables"></a> [environment\_variables](#input\_environment\_variables) | environment variables | <pre>list(object({<br>    name  = string<br>    value = string<br>    type  = string<br>  }))</pre> | `[]` | no |
| <a name="input_fetch_submodules"></a> [fetch\_submodules](#input\_fetch\_submodules) | fetch\_submodules | `bool` | `true` | no |
| <a name="input_image_pull_credentials_type"></a> [image\_pull\_credentials\_type](#input\_image\_pull\_credentials\_type) | image\_pull\_credentials\_type | `string` | `"CODEBUILD"` | no |
| <a name="input_policy_name"></a> [policy\_name](#input\_policy\_name) | policy\_name | `string` | `"E2EsaTerraformCodeBuildPolicy"` | no |
| <a name="input_privileged_mode_enabled"></a> [privileged\_mode\_enabled](#input\_privileged\_mode\_enabled) | privileged\_mode\_enabled | `bool` | `false` | no |
| <a name="input_project_desc"></a> [project\_desc](#input\_project\_desc) | Project desc | `string` | `null` | no |
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | codebuild project name | `string` | `null` | no |
| <a name="input_report_build_status"></a> [report\_build\_status](#input\_report\_build\_status) | report\_build\_status | `bool` | `false` | no |
| <a name="input_role_name"></a> [role\_name](#input\_role\_name) | role\_name | `string` | `"E2EsaTerraformCodeBuildRole"` | no |
| <a name="input_security_group_ids"></a> [security\_group\_ids](#input\_security\_group\_ids) | security\_group\_ids | `list(string)` | `[]` | no |
| <a name="input_source_location"></a> [source\_location](#input\_source\_location) | source\_location | `string` | `""` | no |
| <a name="input_source_type"></a> [source\_type](#input\_source\_type) | source\_type | `string` | `"CODEPIPELINE"` | no |
| <a name="input_source_version"></a> [source\_version](#input\_source\_version) | source\_version | `string` | `"main"` | no |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | subnets | `list(string)` | `[]` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Tag map for the resource | `map(string)` | `{}` | no |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | vpc\_id | `string` | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_codebuild_project_arn"></a> [aws\_codebuild\_project\_arn](#output\_aws\_codebuild\_project\_arn) | aws codebuild project arn |
