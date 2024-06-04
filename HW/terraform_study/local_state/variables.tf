variable "list_ip_addresses" {
  type    = list(string)  
}

variable "surname_name" {
  type    = string
}

variable "unique_ids" {
  type    = list(string)
}

variable "filename_ip_addresses" {
  default = "/home/aliaksei669/terraform/git-study/HW/terraform_study/local_state/ip_addresses.txt"
}

variable "filename_personal_info" {
  default = "/home/aliaksei669/terraform/git-study/HW/terraform_study/local_state/personal_info.txt"
}

variable "filename_unique_ids" {
  default = "/home/aliaksei669/terraform/git-study/HW/terraform_study/local_state/unique_ids.txt"
}
