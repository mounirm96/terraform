provider "local" {}


resource "local_file" "film" {
	filename = "${path.module}/film.txt"
	content = <<EOT
${join("\n", [for movie in var.movie_name : "${movie.name} \n Description : ${movie.desc}"])}
EOT
}



variable "movie_name" {
	description = "mes films prefs"
	type = list(object({
	name = string
	desc = string
}))
	default = [
	{
		name = "Zodiac"
		desc = "Un thriller policier"
	},
	{
		name = "Seven"
		desc = "Un film policier avec une ambiance sombre"
	},
	{
		name = "Paprika"
		desc = "Film d'animation japonais"
	}
]
}


output "fichier_cree" {
	description = "output creation du fichier"
	value = "Fichier crée avec succées ${local_file.film.id} \n"
}

