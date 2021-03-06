## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 4.63.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 4.63.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_core_default_route_table.generated_oci_core_default_route_table](https://registry.terraform.io/providers/hashicorp/oci/4.63.0/docs/resources/core_default_route_table) | resource |
| [oci_core_internet_gateway.internet_gateway](https://registry.terraform.io/providers/hashicorp/oci/4.63.0/docs/resources/core_internet_gateway) | resource |
| [oci_core_subnet.subnet](https://registry.terraform.io/providers/hashicorp/oci/4.63.0/docs/resources/core_subnet) | resource |
| [oci_core_vcn.vcn](https://registry.terraform.io/providers/hashicorp/oci/4.63.0/docs/resources/core_vcn) | resource |
| [oci_identity_compartment.compartment](https://registry.terraform.io/providers/hashicorp/oci/4.63.0/docs/resources/identity_compartment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_description"></a> [compartment\_description](#input\_compartment\_description) | Descrição do compartment | `string` | n/a | yes |
| <a name="input_compartment_name"></a> [compartment\_name](#input\_compartment\_name) | Nome do compartment | `string` | n/a | yes |
| <a name="input_internet_gateway_display_name"></a> [internet\_gateway\_display\_name](#input\_internet\_gateway\_display\_name) | Nome do internet gateway | `string` | n/a | yes |
| <a name="input_root_compartment_id"></a> [root\_compartment\_id](#input\_root\_compartment\_id) | ID do compartment root | `string` | n/a | yes |
| <a name="input_subnet_cidr_block"></a> [subnet\_cidr\_block](#input\_subnet\_cidr\_block) | Bloco CIDR da subnet | `string` | `"10.0.0.0/24"` | no |
| <a name="input_subnet_display_name"></a> [subnet\_display\_name](#input\_subnet\_display\_name) | Nome da subnet na UI | `string` | n/a | yes |
| <a name="input_subnet_dns_label"></a> [subnet\_dns\_label](#input\_subnet\_dns\_label) | Label de DNS da Subnet | `string` | n/a | yes |
| <a name="input_vcn_cidr_blocks"></a> [vcn\_cidr\_blocks](#input\_vcn\_cidr\_blocks) | Lista com ranges de IP para esta VCN | `list(string)` | <pre>[<br>  "10.0.0.0/16"<br>]</pre> | no |
| <a name="input_vcn_display_name"></a> [vcn\_display\_name](#input\_vcn\_display\_name) | Nome da VCN | `string` | n/a | yes |
| <a name="input_vcn_dns_label"></a> [vcn\_dns\_label](#input\_vcn\_dns\_label) | Domínio raiz do VCN | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_subnet_cidr"></a> [subnet\_cidr](#output\_subnet\_cidr) | Bloco de IPs da subnet |
| <a name="output_vcn_cidr"></a> [vcn\_cidr](#output\_vcn\_cidr) | Bloco de IPs da VCN |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 4.63.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 4.63.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_core_nat_gateway.nat_gateway](https://registry.terraform.io/providers/hashicorp/oci/4.63.0/docs/resources/core_nat_gateway) | resource |
| [oci_core_route_table.route_table](https://registry.terraform.io/providers/hashicorp/oci/4.63.0/docs/resources/core_route_table) | resource |
| [oci_core_subnet.subnet](https://registry.terraform.io/providers/hashicorp/oci/4.63.0/docs/resources/core_subnet) | resource |
| [oci_core_vcns.vcns](https://registry.terraform.io/providers/hashicorp/oci/4.63.0/docs/data-sources/core_vcns) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_compartment_id"></a> [compartment\_id](#input\_compartment\_id) | OCID Compartiment ID | `string` | n/a | yes |
| <a name="input_nat_gateway_display_name"></a> [nat\_gateway\_display\_name](#input\_nat\_gateway\_display\_name) | Nome do NAT gateway | `string` | n/a | yes |
| <a name="input_route_rules"></a> [route\_rules](#input\_route\_rules) | Dynamic rules | `any` | n/a | yes |
| <a name="input_subnets"></a> [subnets](#input\_subnets) | Dinamics Subnets | `any` | n/a | yes |
| <a name="input_vcn_display_name"></a> [vcn\_display\_name](#input\_vcn\_display\_name) | VCN Displayed Name | `string` | n/a | yes |

## Outputs

No outputs.