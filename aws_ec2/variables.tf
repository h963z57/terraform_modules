variable "latest_image" {
    type = string
    default = "debian-12-amd64-*"
}

variable "ami" {
    type = string
    default = ""
}

variable "instance_type" {
    type = string
    default = "t3a.nano"
}

variable "subnet_id" {
    type = string
    default = ""
}

variable "vpc_security_group_ids" {
    type = list
    default = []
}

variable "user_data" {
    type = string
    default = "user_data.sh"
}

variable "core_count" {
    type = number
    default = 1
}

variable "threads_per_core" {
    type = number
    default = 1
}

variable "name" {
    type = string
    default = "cnage-me"
}

variable "public_key" {
    type = string
    default = ""
}