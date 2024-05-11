provider "local" {}


resource "local_file" "film" {
	filename = "${path.module}/film.txt"
	content = "Le nom de mon film préfére est : ${var.movie_name} \n"
}



variable "movie_name" {
	description = "mon film pref"
	type = string
	default = "Zodiac"
}


output "fichier_cree" {
	description = "output creation du fichier"
	value = "Fichier crée avec succées ${local_file.film.id} \n"
}

