resource "random_string" "deploy_id" {
  length  = 4
  special = false
}


resource "oci_identity_dynamic_group" "sample_dg" {
  provider       = oci.home_region
  name           = "${var.app_name}-${random_string.deploy_id.result}"
  description    = "DevOps repository build pipeline dynamic group"
  compartment_id = var.compartment_ocid
  matching_rule  = "ALL {resource.type = 'devopsbuildpipeline'}"
}

output oci_identity_dynamic_group {
  value = oci_identity_dynamic_group.sample_dg
}