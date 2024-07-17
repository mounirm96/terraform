#!/bin/bash

# Update package lists and install nginx
sudo apt-get update -y
sudo apt-get install -y nginx

# Enable and start nginx service
sudo systemctl enable nginx
sudo systemctl start nginx

