resource "random_string" "deploy_id" {
  length  = 2
  special = false
}

# resource "oci_logging_log_group" "test_log_group" {
#   compartment_id = var.compartment_ocid
#   display_name   = "${var.app_name}_${random_string.deploy_id.result}_log_group"
  
# }

# output "test_log_group"{
#   value = oci_logging_log_group.test_log_group
# }

resource "oci_identity_dynamic_group" "devops_build_dg" {
  provider       = oci.home_region
  name           = "MyDynamicGroup"
  description    = "DevOps repository build pipeline dynamic group"
  compartment_id = var.compartment_ocid
  matching_rule  = "ALL {resource.type = 'devopsbuildpipeline'}"
}