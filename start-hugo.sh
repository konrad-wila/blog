#!/bin/bash
# Set environment variables
HUGO_VERSION=0.128.0
HUGO_CACHEDIR=$(mktemp -d)
HUGO_ENVIRONMENT=production
# Install Hugo CLI
wget -O /tmp/hugo.deb https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_${HUGO_VERSION}_linux-amd64.deb
sudo dpkg -i /tmp/hugo.deb
# Install Dart Sass
sudo snap install dart-sass
# Checkout the repository (assuming the script is run in the repo directory)
git submodule update --init --recursive
# Install Node.js dependencies if package-lock.json or npm-shrinkwrap.json is present
if [ -f package-lock.json ] || [ -f npm-shrinkwrap.json ]; then
  npm ci
fi
# Build with Hugo
hugo --minify --baseURL "/"
# Assuming ./public is the output directory
echo "Build completed. You can now manually deploy the contents of the ./public directory."
# Start Apache server
sudo apt-get update
sudo apt-get install -y apache2
echo "ServerName localhost" | sudo tee /etc/apache2/conf-available/servername.conf
sudo a2enconf servername
sudo cp -r ./public/* /var/www/html/
sudo service apache2 start
echo "Apache server is running and serving the build directory."