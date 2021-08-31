variable "eks_cluster_name" {
    type = string
}

variable "db_instance_name" {
    type = string
}

variable "db_instance_type" {
    type = string
}

variable "db_disk_size" {
    type = string
}

variable "db_username" {
    type = string
}

variable "db_password" {
    type = string
}

variable "region" {
    type = string
}

variable "vpc_cidr" {
    type = string
}

variable "environment" {
    type = string
}

variable "availability_zones" {
    type = list(string)
}

variable "public_subnets_cidr" {
    type = list(string)
}

variable "private_subnets_cidr" {
    type = list(string)
}

variable "s3_backend" {
    type = object({
        s3_bucket_name = string
        dynamodb_table = string
    })
    default = {
      dynamodb_table = "tf-remote-state-lock-3881900019"
      s3_bucket_name = "terraform-bucket-lock-3881900019"
    }
}

variable "eks_workers" { 
    type = object({
        support = object({
            instance_type = string
            desired_capacity = string
            min_capacity = string
            max_capacity = string
            disk_size = string
            ssh_key_name = string
        })
        backend = object({
            instance_type = string
            desired_capacity = string
            min_capacity = string
            max_capacity = string
            disk_size = string
            ssh_key_name = string
        })
        sip-proxy = object({
            instance_type = string
            desired_capacity = string
            min_capacity = string
            max_capacity = string
            disk_size = string
            ssh_key_name = string
        })
        sip-b2bua = object({
            instance_type = string
            desired_capacity = string
            min_capacity = string
            max_capacity = string
            disk_size = string
            ssh_key_name = string
        })
    })
}
