variable "name" {
  type = string
}

variable "description" {
  type    = string
  default = ""
}

variable "topics" {
  type    = list(string)
  default = []
}
