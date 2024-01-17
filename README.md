## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | ~> 4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_instance.myliveserver](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance) | resource |
| [aws_security_group.allow_tls](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_ami_id"></a> [ami\_id](#input\_ami\_id) | EC2 Instance AMI ID | `string` | `"ami-0905a3c97561e0b69"` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | Environment tag | `string` | `"dev"` | no |
| <a name="input_ingress_rule"></a> [ingress\_rule](#input\_ingress\_rule) | TLS from VPC | `list(any)` | <pre>[<br>  {<br>    "cidr_blocks": [<br>      "116.30.20.50/32"<br>    ],<br>    "from_port": 443,<br>    "protocol": "tcp",<br>    "to_port": 443<br>  },<br>  {<br>    "cidr_blocks": [<br>      "116.30.20.50/32"<br>    ],<br>    "from_port": 80,<br>    "protocol": "tcp",<br>    "to_port": 80<br>  }<br>]</pre> | no |
| <a name="input_security_group_name"></a> [security\_group\_name](#input\_security\_group\_name) | Allow TLS inbound traffic | `string` | `"allow_tls"` | no |
| <a name="input_security_group_tag"></a> [security\_group\_tag](#input\_security\_group\_tag) | Security Group Tag | `string` | `"manual"` | no |

## Outputs

No outputs.
