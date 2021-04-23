
variable "subnets" {
  default = {
    "public"= {
      name   = "us-east-1a"
      number = 1
      type   = "public"
    },
    "private"= {
      name   = "us-east-1b"
      number = 2
      type   = "private"
    },
    "Database"= {
      name   = "us-east-1c"
      number = 3
      type   = "Database"
    },


}

}
