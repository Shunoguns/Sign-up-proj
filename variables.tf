variable "region" {
     default = "eu-west-1"
}
variable "availabilityZone" {
     default = "eu-west-1a"
}
variable "instanceTenancy" {
    default = "default"
}
variable "dnsSupport" {
    default = true
}
variable "dnsHostNames" {
    default = true
}
variable "vpcCIDRblock" {
    default = "10.0.0.0/16"
}

variable "subnetCIDRblock" {
    default = "10.0.1.0/24"
}
variable "destinationCIDRblock" {
    default = "0.0.0.0/0"
}
variable "ingressCIDRblock" {
    type = list
    default = [ "0.0.0.0/0" ]
}
variable "egressCIDRblock" {
    type = list
    default = [ "0.0.0.0/0" ]
}
variable "mapPublicIP" {
    default = true
}

# variable "path_to_private_key" {
#    default = "Upkey"
#}

variable "path_to_public_key"  {
 default = "~/aprilkey.pem"
}



#default = "../ex4/julykey.pub"


 

