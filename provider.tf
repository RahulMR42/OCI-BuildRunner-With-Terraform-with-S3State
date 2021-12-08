terraform {
  required_version = ">= 0.14"
  required_providers {
    oci = {
      source  = "hashicorp/oci"
      
    }
    
    random = {
      source  = "hashicorp/random"
      version = "2.3.0" # Latest version as March 2021 = 3.1.0. Using 2.3.0 (July, 2020) for ORM compatibility
    }
  }
}

provider "oci" {
  auth = "InstancePrincipal"
  region = "${var.region}"
  alias  = "home_region"
  
}

