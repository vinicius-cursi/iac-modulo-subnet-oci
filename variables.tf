
variable "nat_gateway_display_name" {
  type        = string
  description = "Nome do NAT gateway"
}

variable "vcn_display_name" {
  type        = string
  description = "VCN Displayed Name"
}

variable "subnets" {
  type        = any
  description = "Dinamics Subnets"
}

variable "route_rules" {
  type        = any
  description = "Dynamic rules"
}

variable "compartment_id" {
  type        = string
  description = "OCID Compartiment ID"
}