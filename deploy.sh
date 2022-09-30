mkdir deploy
sudo mv /var/www/{.,}* ./deploy/
sudo chown -R admotos:admotos ./deploy/{.,}*
git -C ./deploy pull origin main
sudo mv ./deploy/{.,}* /var/www/
rm -R deploy
sudo chown -R www-data:www-data /var/www/{.,}*
