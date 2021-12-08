resource "random_id" "tag" {
  byte_length = 2
}

resource "oci_ons_notification_topic" "oci_ons_notification_topic" {
    #Required
    compartment_id = var.compartment_ocid
    name = "var.notification_topic_name-${random_id.tag.hex}"
    description = var.notification_topic_description

}

output "notifcation_details"{
  value = oci_ons_notification_topic.oci_ons_notification_topic
}