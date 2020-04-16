# 配置git
cp ./config-backup/git/.gitconfig ~ && echo "git配置成功"

# 备份源文件
mv /etc/apt/sources.list sources.list.backup
# 设置国内源
cp ~/config-backup/apt/sources.list /etc/apt/
# 更新源
sudo apt update 

# 安装nginx
apt install nginx -y 
# 存放证书到nginx配置目录下
cp -r ./config-backup/nginx/cert /etc/nginx/
# 配置nginx
cp ./config-backup/nginx/conf.d/* /etc/nginx/conf.d/
# 重启nginx
nginx -s reload

# 安装make
apt install make

# 安装nodejs
echo y | ./config-backup/nodejs/n-install.sh && source ~/.bashrc && echo nodejs安装成功
# 安装commitizen
./config-backup/nodejs/commitizen.sh
# 安装http-server
./config-backup/nodejs/http-server.sh

echo 'alias cdr="cd /mnt/c/Users/yong/repositories"' >> ~/.bashrc
echo 'alias cdd="cd /mnt/c/Users/yong/Desktop"' >> ~/.bashrc
echo 'alias o=explorer.exe' >> ~/.bashrc
