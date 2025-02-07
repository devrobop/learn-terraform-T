 

variable "instance_type" {
    default = "t2.micro"
}

variable "domain_name" {
    default = "devrobo.online"
}

variable "component" {
    # Fixed syntax - use list instead of set
    default = ["frontend", "catalogue", "mongo"]
}