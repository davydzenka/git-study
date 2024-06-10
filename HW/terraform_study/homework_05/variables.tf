variable "cloud_users" {
  type = string
  default = "andrew:ken:faraz:mutsumi:peter:steve:braja"
}

variable "media" {
  type = set(string)
  default = [ 
    "/media/tails.jpg",
    "/media/eggman.jpg",
    "/media/ultrasonic.jpg",
    "/media/knuckles.jpg",
    "/media/shadow.jpg",
  ]
}

variable "sf" {
  type = list(string)
  default = [
    "ryu", "ken", "akuma", "seth", "zangief",
    "poison", "gen", "oni", "thawk", "fang",
    "rashid", "birdie", "sagat", "bison", "cammy",
    "chun-li", "balrog", "cody", "rolento", "ibuki"
  ]
}

