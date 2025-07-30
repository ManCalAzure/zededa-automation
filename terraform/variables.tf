
variable "zedcloud_url" { type = string }

variable "zedcloud_token" { type = string }

variable "device_serial" { 
  type = string
  sensitive = true
  default = "ABCDE-123456-7890"
  }

variable "docker_hub_user" { 
  type = string
  sensitive = true
  default = "zedmanny"
  }


variable "docker_hub_secret" { 
  type = string
  sensitive = true
  default = "net pass"
  }

# Variable for project names
variable "regions" {
  type    = list(string)
  default = []
  description = "List of region names"
}

# Define variables for reusability
variable "num_instances_per_region" {
  default = 1
}

variable "base_uuid_prefix" {
  default = "tf_region"
}

# Define base suffix (hex) per region to ensure unique serials
variable "region_base_suffix_map" {
  default = {
    north_east = "000000000000"
    south_east = "000000100000"
    north_west = "000000200000"
    south_west = "000000300000"
  }
}

variable "onboarding_key" {
  default = "5d0767ee-0547-4569-b530-387e526f8cb9"
  sensitive = true
}

variable "forti_iso_name" {
  default = "forti-bootstrap.iso"
}

variable "forti_iso_id" {
  default = "bootstrap iso id here"
}

####Azure Blob
variable "azure_blob_url" {
    description = "Azure blob URL"
    type        = string
    default     = "https://seblobstore.blob.core.windows.net"
}

variable "azure_blob_api_username" {
    description = "API Key - or Username"
    type        = string
    sensitive   = true
}

variable "azure_blob_password" {
    description = "This is the passkey for Azure blob"
    type        = string
    sensitive   = true

}

variable "azure_ds_path" {
    description = "Path to blob"
    type        = string
    default     = "demo-blob"
    sensitive = true
}

variable "datastore_type" {
    description = "Zededa datastore type"
    type        = string
    default     = "DATASTORE_TYPE_AZUREBLOB"
}

variable "ssh_pub_key" {
  default = "public key here"
  sensitive = true
}

variable "edgeview_token" {
  default = "Zededa session token here"
  sensitive = true
}