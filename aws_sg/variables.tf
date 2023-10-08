variable "zone" {
  type    = string
  default = "ru-central1-a"
}

variable "env" {
  type    = string
  default = "test"
}

variable "projectname" {
  type    = string
  default = "change me"
}

variable "description" {
  type    = string
  default = "test"
}

variable "vpc_id" {
  type    = string
  default = ""
}

variable "allow_ingress_ports_tcp" {
  type    = list(any)
  default = ["0"]
}

variable "allow_egress_ports" {
  type    = list(any)
  default = ["0"]
}

variable "ingress_rules_advanced" {
  type = list(object({
    protocol    = string
    description = string
    cidr_blocks = list(string)
    port        = number
  }))
  default = [
    # {
    #   protocol = "TCP"
    #   description = "Auto generated rule by terraform (advanced mode)"
    #   cidr_blocks = ["0.0.0.0/0"]
    #   port = "-1"
    # },
    # {
    #   protocol = "UDP"
    #   description = "Auto generated rule by terraform (advanced mode)"
    #   cidr_blocks = ["0.0.0.0/0"]
    #   port = "-1"
    # }
  ]
}

variable "egress_rules_advanced" {
  type = list(object({
    protocol    = string
    description = string
    cidr_blocks = list(string)
    port        = number
  }))
  default = [
    # {
    #   protocol = "TCP"
    #   description = "Auto generated rule by terraform"
    #   cidr_blocks = ["0.0.0.0/0"]
    #   port = "-1"
    # },
    # {
    #   protocol = "UDP"
    #   description = "Auto generated rule by terraform"
    #   cidr_blocks = ["0.0.0.0/0"]
    #   port = "-1"
    # }
  ]
}