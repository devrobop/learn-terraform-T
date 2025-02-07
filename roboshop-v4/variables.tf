
variable "domain_name" {
    default = "devrobo.online"
  
}
variable "component" {
    default = {
      frontend = {
        instance_type = "t2.micro"
        }
      catalogue = {
        instance_type = "t3.micro"
        }
        mongo = {
        instance_type = "t3.small"
        }
    }
}   

# here frontend is the key and the value is the object

# each.key
# each.value