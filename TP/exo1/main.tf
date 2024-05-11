provider "local" {}


resource "local_file" "film" {
	filename = "${path.module}/film.txt"
	content = "Le nom de mon film préfére est : ${var.film_pref} \n"
}



variable "film_pref" {
	description = "mon film pref"
	type = string
	default = "Zodiac"
}
