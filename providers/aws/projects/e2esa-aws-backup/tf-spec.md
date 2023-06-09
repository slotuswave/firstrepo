## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.3.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.37.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.37.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_kms"></a> [kms](#module\_kms) | ../../modules/e2esa-module-aws-kms | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_backup_plan.plan](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_plan) | resource |
| [aws_backup_selection.selection](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_selection) | resource |
| [aws_backup_vault.vault](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/backup_vault) | resource |
| [aws_iam_role.backup_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_appid"></a> [appid](#input\_appid) | n/a | `any` | n/a | yes |
| <a name="input_aws_region"></a> [aws\_region](#input\_aws\_region) | General | `any` | n/a | yes |
| <a name="input_business_unit"></a> [business\_unit](#input\_business\_unit) | n/a | `any` | n/a | yes |
| <a name="input_cold_storage_after"></a> [cold\_storage\_after](#input\_cold\_storage\_after) | n/a | `any` | n/a | yes |
| <a name="input_cost_center"></a> [cost\_center](#input\_cost\_center) | n/a | `any` | n/a | yes |
| <a name="input_createdby"></a> [createdby](#input\_createdby) | n/a | `any` | n/a | yes |
| <a name="input_delete_after"></a> [delete\_after](#input\_delete\_after) | n/a | `any` | n/a | yes |
| <a name="input_kms_name"></a> [kms\_name](#input\_kms\_name) | KMS variables | `any` | n/a | yes |
| <a name="input_org_unit"></a> [org\_unit](#input\_org\_unit) | n/a | `any` | n/a | yes |
| <a name="input_plan_schedule"></a> [plan\_schedule](#input\_plan\_schedule) | n/a | `any` | n/a | yes |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `any` | n/a | yes |
| <a name="input_project"></a> [project](#input\_project) | Tags | `any` | n/a | yes |
| <a name="input_suffix"></a> [suffix](#input\_suffix) | Backup variables | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_plan_arn"></a> [plan\_arn](#output\_plan\_arn) | The ARN of the backup plan |
| <a name="output_plan_id"></a> [plan\_id](#output\_plan\_id) | The id of the backup plan |
| <a name="output_plan_tags_all"></a> [plan\_tags\_all](#output\_plan\_tags\_all) | A map of tags assigned to the resource, including those inherited from the provider default\_tags |
| <a name="output_valut_id"></a> [valut\_id](#output\_valut\_id) | The name of the vault id |
| <a name="output_vault_arn"></a> [vault\_arn](#output\_vault\_arn) | The ARN of the vault. |
| <a name="output_vault_recovery_points"></a> [vault\_recovery\_points](#output\_vault\_recovery\_points) | The number of recovery points that are stored in a backup vault. |
