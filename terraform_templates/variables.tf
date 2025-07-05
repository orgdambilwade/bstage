variable "service_account_root" {
    description = "Service account to be used"
    type        = string
}

variable "project_id_root" {
    description = "Project ID to be used"
    type        = string
}

variable "region_root" {
    description = "region to be used"
    type        = string
}

variable "zone_root" {
    description = "zone to be used"
    type        = string
}

variable "request_id_root" {
    description = "provisioning request id"
    type        = string
}

variable "compute_image" {
    description = "Compute image to be used for provisioning"
    type        = string
}

variable "compute_machine_type" {
    description = "compute machine type to be used for provisioning"
    type        = string
}

variable "compute_disk_size" {
    description = "compute machine disk size"
    type        = number
}
