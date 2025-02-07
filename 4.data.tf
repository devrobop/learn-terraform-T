# we use data.tf to retrieve data from the aws resources 
# rather than to provide data manally everyime 

data "aws_ami" "example" {
    most_recent      = true
    name_regex       = "RHEL-9-DevOps-Practice"
    owners           = ["973714476881"]

}

output "ami" {
  value = data.aws_ami.example
}