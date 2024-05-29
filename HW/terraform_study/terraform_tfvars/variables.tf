variable "list_ip_addresses" {
  type    = list(string)  
}

variable "count_list_ip_addresses" {
  type    = number
}

variable "surname_name" {
  type    = string
}

variable "unique_ids" {
  type    = list(string)
}

variable "count_unique_ids" {
  type    = number
}

variable "filename_ip_addresses" {
  default = "/home/aliaksei669/terraform/git-study/HW/terraform_study/terraform_tfvars/ip_addresses.txt"
}

variable "filename_personal_info" {
  default = "/home/aliaksei669/terraform/git-study/HW/terraform_study/terraform_tfvars/personal_info.txt"
}

variable "filename_unique_ids" {
  default = "/home/aliaksei669/terraform/git-study/HW/terraform_study/terraform_tfvars/unique_ids.txt"
}
