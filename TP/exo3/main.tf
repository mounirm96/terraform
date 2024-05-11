provider "local" {}


resource "local_file" "film" {
	filename = "${path.module}/film.txt"
	content = <<EOT
${join("\n", [for k, v in var.movie_name : "${k} : ${v["name"]} \nDescription : ${v["desc"]}"])}
EOT
}



variable "movie_name" {
	description = "mes films prefs"
	type = map(object({
	name = string
	desc = string
}))
	default = {
	film1 = {
		name = "Zodiac"
		desc = "Un thriller policier"
	}
	film2 = {
		name = "Seven"
		desc = "Un film policier avec une ambiance sombre"
	}
	filme3 = {
		name = "Paprika"
		desc = "Film d'animation japonais"
	}
}
}


output "fichier_cree" {
	description = "output creation du fichier"
	value = "Fichier crée avec succées ${local_file.film.id} \n"
}

