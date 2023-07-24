mkdir deploy
sudo mv /var/www/{.,}* ./deploy/
sudo chown -R YOUR_USER:YOUR_USER ./deploy/{.,}*
git -C ./deploy reset --hard HEAD
git -C ./deploy clean -f -d
git -C ./deploy pull origin main
php artisan migrate
npm --prefix deploy install
npm --prefix deploy run build
sudo mv ./deploy/{.,}* /var/www/
rm -R deploy
sudo chown -R www-data:www-data /var/www/{.,}*
