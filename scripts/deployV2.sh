#!/bin/bash
# Updated Script to Work with Cron


# Use absolute paths for automation
REPO_URL="https://github.com/Kamausizzlah/mini-web-portfolio.git"
WEB_DIR="/var/www/html"
TEMP_DIR="/tmp/web_project"

cd /home/ubuntu

# Remove old temp files if they exist
rm -rf $TEMP_DIR

# Clone and Update
/usr/bin/git clone $REPO_URL $TEMP_DIR
sudo cp -r $TEMP_DIR/* $WEB_DIR/
sudo chown -R www-data:www-data $WEB_DIR

# Cleanup
rm -rf $TEMP_DIR