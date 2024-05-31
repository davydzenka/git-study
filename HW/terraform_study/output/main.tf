resource "local_file" "id_addresses" {
  content  = join(" , ", var.list_ip_addresses)
  filename = var.filename_ip_addresses
}

resource "local_file" "personal_info" {
  filename = var.filename_personal_info
  content  = var.surname_name

  depends_on = [
    # id_addresses.txt --> personal_info.txt --> unique_ids.txt
    local_file.id_addresses,
  ]
}

resource "local_file" "unique_ids" {
  content  = join(" , ", var.unique_ids)
  filename = var.filename_unique_ids

  depends_on = [
    # id_addresses.txt --> personal_info.txt --> unique_ids.txt
    local_file.personal_info,
  ]
}
