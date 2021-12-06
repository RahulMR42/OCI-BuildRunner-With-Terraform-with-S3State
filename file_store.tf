resource "oci_file_storage_file_system" "test_file_system" {
    availability_domain = var.file_system_availability_domain
    compartment_id      = var.compartment_ocid
    defined_tags        = {}
    display_name        = "FS for test"
    freeform_tags       = {}
     
    timeouts {}
}


output  fs_name {
  value       = "${oci_file_storage_file_system.test_file_system.display_name}"
  description = "fs name"
  depends_on  = []
}
