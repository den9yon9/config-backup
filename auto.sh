# 下载配置仓库
git clone https://github.com/den9yon9/config-backup.git

# 配置git
cp ./config-backup/.gitconfig .

# 安装并配置v2ray
chmod a+x ./config-backup/v2ray-install.sh && ./config-backup/v2ray-install.sh -y && cp ./config-backup/config.json /etc/v2ray/

# 启动v2ray
service v2ray start && echo /etc/v2ray/config.json && echo -e 'v2ray启动成功'

# 启用防火墙开放22端口,80端口,443端口
ufw enable -y && ufw allow 22 && ufw allow 80 && ufw allow 443

# 安装nginx
apt install nginx -y 

# 配置nginx
cp ./config-backup/default.conf /etc/nginx/conf.d/

# 存放证书到nginx配置目录下
cp -r ./config-backup/cert /etc/nginx/

# 重启nginx
nginx -s reload
