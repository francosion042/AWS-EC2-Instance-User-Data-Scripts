#!/bin/bash

# Update the package list and upgrade the installed packages
sudo apt-get update
sudo apt-get upgrade -y

# Install essential packages
sudo apt-get install -y software-properties-common
sudo apt-get install -y python3-pip

# Example: Install and configure a web server (Nginx)
sudo apt-get install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx

# Example: Install a database server (Postgresql)
sudo apt-get install -y postgresql
sudo systemctl status postgresql

# Configure firewall rules (example: allow SSH and HTTP)
# sudo ufw allow OpenSSH
# sudo ufw allow 80/tcp
# sudo ufw enable

# Example: Install and configure other software or dependencies

# Install application-specific dependencies
# sudo apt-get install -y your-application-dependencies

# Set up your application, e.g., download code or configure settings

# Start and enable your application service
# sudo systemctl start your-application
# sudo systemctl enable your-application

# Optional: Add your user to the sudo group if not done during instance creation
# sudo usermod -aG sudo your-username

# Clean up any unnecessary packages
# sudo apt-get autoremove -y
# sudo apt-get clean

echo "Instance setup script completed."
