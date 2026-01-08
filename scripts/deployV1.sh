#!/bin/bash

# Variables
REPO_URL="https://github.com/Kamausizzlah/mini-web-portfolio.git"
WEB_DIR="/var/www/html"

echo "------------------------------------------"
echo "Starting Deployment..."
echo "------------------------------------------"

# 1. Update and Install Dependencies
sudo apt update -y
sudo apt install nginx git -y

# 2. Clean up the web directory (Nginx creates a default index.html)
echo "Cleaning up old files..."
sudo rm -rf $WEB_DIR/*

# 3. Clone the code from GitHub
echo "Cloning latest code from $REPO_URL..."
# We clone into a temp folder first to avoid permission issues
sudo git clone $REPO_URL /tmp/web_project

# 4. Move files to the Nginx folder
sudo cp -r /tmp/web_project/* $WEB_DIR/

# 5. Clean up temp files
sudo rm -rf /tmp/web_project

# 6. Set permissions so Nginx can read the files
sudo chown -R www-data:www-data $WEB_DIR

echo "------------------------------------------"
echo "Success! Site updated from GitHub."
echo "Visit: http://$(curl -s ifconfig.me)"
echo "------------------------------------------"