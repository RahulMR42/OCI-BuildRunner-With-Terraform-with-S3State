resource "random_id" "tag" {
  byte_length = 2
}

resource "oci_ons_notification_topic" "test_notification_topic" {
    #Required
    compartment_id = var.compartment_id
    name = "var.notification_topic_name-${random_id.tag.hex}"

    #Optional
    defined_tags = {"Operations.CostCenter"= "42"}
    description = var.notification_topic_description
    freeform_tags = {"Department"= "Finance"}
}