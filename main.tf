data "oci_core_vcns" "vcns" {
  #Required
  compartment_id = var.compartment_id

  #Optional
  display_name = var.vcn_display_name
  # state = var.vcn_state
}

resource "oci_core_nat_gateway" "nat_gateway" {
  #Required
  compartment_id = var.compartment_id
  vcn_id         = data.oci_core_vcns.vcns.virtual_networks[0].id

  #Optional
  display_name = var.nat_gateway_display_name
  #freeform_tags = {"Department"= "Finance"}
  #defined_tags = {"Operations.CostCenter"= "42"}
}

resource "oci_core_route_table" "route_table" {
  compartment_id = var.compartment_id
  display_name   = "priv-routetable-01"
  vcn_id         = data.oci_core_vcns.vcns.virtual_networks[0].id

  route_rules {
    description       = "traffic to the internet"
    destination       = "0.0.0.0/0"
    destination_type  = "CIDR_BLOCK"
    network_entity_id = oci_core_nat_gateway.nat_gateway.id
  }

  dynamic "route_rules" {
    for_each = var.route_rules
    content {
      description       = lookup(route_rules.value, "description", "")
      destination       = lookup(route_rules.value, "destination", "")
      destination_type  = "CIDR_BLOCK"
      network_entity_id = oci_core_nat_gateway.nat_gateway.id
    }
  }
}
resource "oci_core_subnet" "subnet" {
  for_each = var.subnets
  # Required
  compartment_id = var.compartment_id
  vcn_id         = data.oci_core_vcns.vcns.virtual_networks[0].id
  cidr_block     = lookup(each.value, "cidr_block", "")
  # Optional 
  display_name               = lookup(each.value, "display_name", "")
  dns_label                  = lookup(each.value, "dns_label", "")
  prohibit_public_ip_on_vnic = lookup(each.value, "prohibit_public_ip_on_vnic", "false")
  # Security
  route_table_id    = oci_core_route_table.route_table.id
  security_list_ids = [data.oci_core_vcns.vcns.virtual_networks[0].default_security_list_id]
  #defined_tags = {"Operations.CostCenter"= "42"}
  #freeform_tags = {"Department"= "Finance"}
}