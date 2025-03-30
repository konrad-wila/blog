# Install inotify-tools if not already installed
if ! command -v inotifywait &> /dev/null
then
    sudo apt-get update
    sudo apt-get install -y inotify-tools
fi

# Build with Hugo
hugo --watch --minify --baseURL "/" &

# Start Apache server
# sudo a2enconf servername
# sudo cp -r ./public/* /var/www/html/
sudo service apache2 start

echo "Apache server is running and serving the build directory."

# Watch for changes in the public directory and restart Apache when changes are detected
while inotifywait -r -e modify,create,delete,move ./public; do
    #sudo cp -r ./public/* /var/www/html/
    sudo service apache2 restart
    echo "Apache server restarted due to changes in the build directory."
done