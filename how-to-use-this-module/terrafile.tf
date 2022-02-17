provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.region
}

module "priv-subnet" {
  source                   = "../"
  compartment_id           = local.compartment_id
  nat_gateway_display_name = "${local.name}-nat"
  vcn_display_name         = "${local.name}-vcn"
  route_rules              = local.route_rules
  subnets                  = local.subnets
}

locals {
  name = "MentoriaIaC"
  compartment_id = "ocid1.compartment.oc1.."
  subnets = {
    sub1 = {
      display_name = "Subnet-1"
      dns_label    = "s01"
      cidr_block   = "10.19.1.0/24"
    },
    sub2 = {
      display_name               = "Subnet-2"
      dns_label                  = "s02"
      cidr_block                 = "10.19.2.0/24"
      prohibit_public_ip_on_vnic = "true"
    },
    sub3 = {
      display_name               = "Subnet-3"
      dns_label                  = "s03"
      cidr_block                 = "10.19.3.0/24"
      prohibit_public_ip_on_vnic = "true"
    }
  }
  route_rules = {
    role1 = {
      description      = "To On-Premisses"
      destination      = "10.20.0.0/24"
      destination_type = "CIDR_BLOCK"
    },
  }
}
