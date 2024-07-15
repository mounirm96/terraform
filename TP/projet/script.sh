#!/bin/bash

# Mettre à jour les paquets
sudo apt-get update

# Installer figlet
sudo apt-get install -y figlet

# Utiliser figlet pour afficher un message
figlet "Hello, Terraform!"

