resource "random_password" "user_password" {
  length = 10
}

resource "local_file" "user_password" {
  filename = "/home/aliaksei669/terraform/git-study/HW/terraform_study/HW_00/user_password.txt"
  content = random_password.user_password.result
}

resource "random_password" "admin_password" {
  length = 14
}

resource "local_file" "admin_password" {
  filename = "/home/aliaksei669/terraform/git-study/HW/terraform_study/HW_00/admin_password.txt"
  content = random_password.admin_password.result
}
