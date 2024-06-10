locals {
  users_list = "${split(":", var.cloud_users)}"
}

output "cloud_user_list" {
  value = "${local.users_list}"
}

resource "random_integer" "priority" {
  min = 0
  max = 4
}

locals {
  int = "${random_integer.priority.result}" 
}

output "media_random" {
  value = "${element(tolist(var.media), local.int)}"
}

locals {
  sf_subset = "${slice(var.sf, 0, 5)}"
  sorted_distinct_media = "${sort(var.media)}"
}

output "sf_subset" {
  value = "${local.sf_subset}"
}

output "sorted_distinct_media" {
  value = "${local.sorted_distinct_media}"
}

locals {
  key_sf_map   = [for sf_name in var.sf : sf_name]
  value_sf_map = [for sf_value in var.sf : contains(var.sf, sf_value)] 
}

output "sf_map" {
  value = zipmap(local.key_sf_map, local.value_sf_map)
}

locals {
  reversed_sf = reverse(var.sf)
}

output "reversed_sf" {
  value = "${local.reversed_sf}"
}

