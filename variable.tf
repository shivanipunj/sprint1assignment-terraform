#-----------practice variables-------------

variable "number" {
  type    = number
  default = "1234"

}

variable "boolean" {
  type    = bool
  default = true

}

variable "var_filename" {
  type        = string
  description = "enter filename"
  default     = "myfile.txt"

}
variable "var_content" {
  type        = string
  description = "enter content"
  default     = "this is demo content"

}

variable "var_object" {
  type = object({
    fname   = string,
    content = string
    }
  )

}

variable "namelistfile" {
  type = list(string)

}