mkdir ./deploy
rm -R deploy
mkdir deploy
sudo mv /var/www/{.,}* ./deploy/
git -C ./deploy reset --hard HEAD
git -C ./deploy clean -f -d
git -C ./deploy pull origin main
npm --prefix deploy install
npm --prefix deploy run build
sudo mv ./deploy/{.,}* /var/www/
rm -R deploy
