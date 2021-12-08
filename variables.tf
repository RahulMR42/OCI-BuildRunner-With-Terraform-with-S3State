variable region {
  type        = string
  default     = "us-ashburn-1"
  description = "OCI region"
}

variable compartment_ocid {
default = "ocid1.compartment.oc1..aaaaaaaalbagydl2powatrvczfdfempy5z5j7g7kjm3gp6lkuk2odvvsrvdq"
}

variable notification_topic_name {
  default = "sample-topic"
}

variable notification_topic_description {
  default = "Test notification topic from build runner /tf "
}


