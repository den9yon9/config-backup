# 配置git
cp ./config-backup/.gitconfig ~ && echo "git配置成功"

# 安装nginx
apt install nginx -y 
# 存放证书到nginx配置目录下
cp -r ./config-backup/cert /etc/nginx/
# 配置nginx
cp ./config-backup/default.conf /etc/nginx/conf.d/
# 重启nginx
nginx -s reload

# 安装make
apt install make

# 安装nodejs
chmod a+x ./config-backup/n-install.sh && echo y | ./config-backup/n-install.sh && source ~/.bashrc && echo nodejs安装成功

# 安装commitizen
./config-backup/commitizen.sh
