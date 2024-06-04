output "list_ip_addresses_content" {
  value = local_file.id_addresses.content
}

output "list_ip_adresses_id" {
  value = local_file.id_addresses.id
}

output "personal_info_content" {
  value = local_file.personal_info.content
}

output "personal_info_id" {
  value = local_file.personal_info.id
}

output "unique_ids_content" {
  value = local_file.unique_ids.content
}

output "unique_ids_id" {
  value = local_file.unique_ids.id
}
