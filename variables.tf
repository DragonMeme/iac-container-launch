variable "subscription_id" {

}

variable "tenant_id" {

}

variable "tags" {
    default = {
        Environment = "TEST"
        Project = "Store IAC container"
        CreatedBy = "Anonymous"
    }
}

variable "resourceName" {
    default = "RG_IAC_CONTAINER"
}

variable "region" {
    default = "australiaeast"
}

variable "containerName" {
    default = "myCReg"
}

variable "aksName" {
    default = "myAKSC"
}

variable "nodePoolName" {
    default = "mynodepool"
}

variable "cID" {

}

variable "sID" {

}

