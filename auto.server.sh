# 配置git
cp ./config-backup/.gitconfig ~ && echo "git配置成功"

# 安装v2ray
chmod a+x ./config-backup/v2ray-install.sh && ./config-backup/v2ray-install.sh -y 
# 配置v2ray
cp ./config-backup/config.json /etc/v2ray/config.json
# 启动v2ray
service v2ray start && cat /etc/v2ray/config.json && echo -e '\nv2ray启动成功'

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

# 防火墙开放22端口,80端口,443端口,并启用
ufw allow 22 && ufw allow 80 && ufw allow 443  && echo y | ufw enable

# 安装加速器
wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh