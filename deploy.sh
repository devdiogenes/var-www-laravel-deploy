mkdir deploy
sudo mv /var/www/{.,}* ./deploy/
sudo chown -R YOUR-USER:YOUR-GROUP ./deploy/{.,}*
git -C ./deploy pull origin main
php artisan migrate
npm install
npm run build
sudo mv ./deploy/{.,}* /var/www/
rm -R deploy
sudo chown -R www-data:www-data /var/www/{.,}*
