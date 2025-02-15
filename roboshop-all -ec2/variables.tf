
variable "domain_name" {
  default = "devrobo.online"
  
}
variable "components" {
    default = {
      frontend = {}
      catalogue ={}
      mongo    = {}
      redis    = {}
      rabbitmq = {}
      cart     = {}
      mysql    = {}
      user     = {}
      shipping = {}
      payment  = {}
      dispatch = {}
              
    }
}   

# here frontend is the key and the value is the object

# each.key
# each.value