variable region {
  type        = string
  default     = "us-ashburn-1"
  description = "OCI region"
}

variable tenancy_ocid{
  default=""

}

variable user_ocid{
  default=""

}
variable fingerprint{
  default=""

}
variable compartment_ocid {
default = "ocid1.compartment.oc1..aaaaaaaalbagydl2powatrvczfdfempy5z5j7g7kjm3gp6lkuk2odvvsrvdq"
}



variable private_key_path{
default = ""
}

variable file_system_availability_domain {
    default = "Qhab:US-ASHBURN-AD-1"
}