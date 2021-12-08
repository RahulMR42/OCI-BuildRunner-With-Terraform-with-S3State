resource "random_string" "deploy_id" {
  length  = 2
  special = false
}

resource "oci_ons_notification_topic" "oci_ons_notification_topic" {
    #Required
    compartment_id = var.compartment_ocid
    name = "var.notification_topic_name_${random_string.deploy_id.result}"
    description = var.notification_topic_description

}

output "notifcation_details"{
  # value = oci_ons_notification_topic.oci_ons_notification_topic
  value = random_string.deploy_id
}