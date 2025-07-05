variable "instance_name" {
    description = "Name of the instance"
    type        = string
}
variable "service_account" {
    description = "Service account to be used"
    type        = string

}

variable "project_id" {
    description = "Service account to be used"
    type        = string
}

variable "region" {
    description = "region to be used"
    type        = string
}

variable "zone" {
    description = "zone to be used"
    type        = string
}


variable "username" {
    description = "username to be used"
    type        = string
}


variable "public_key" {
    description = "public key to be used"
    type        = string
}

variable "compute_image" {
    description = "compute image type"
    type        = string
}

variable "compute_machine_type" {
    description = "compute machine type"
    type        = string
}

variable "request_id" {
    description = "provisioning request id"
    type        = string
}

variable "compute_disk_size" {
    description = "Compute Disk Size"
    type        = number
}