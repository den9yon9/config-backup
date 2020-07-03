# 给脚本加执行权限
chmod 777 -R .

# 备份源文件
mv /etc/apt/sources.list /etc/apt/sources.list.backup
# 设置国内源
cp ~/config-backup/apt/sources.list /etc/apt/
# 更新源
sudo apt update 

# 设置Linux默认编辑器
echo 3 | update-alternatives --config editor

# 配置git
cp ./config-backup/git/.gitconfig ~ && echo "git配置成功"

# 安装make
apt install make

# 安装nodejs
echo y | ./config-backup/nodejs/n-install.sh && source ~/.bashrc && echo nodejs安装成功
# 安装commitizen
./config-backup/nodejs/commitizen.sh
# 安装http-server
./config-backup/nodejs/http-server.sh

# 安装nginx
apt install nginx -y 
# 存放证书到nginx配置目录下
cp -r ./config-backup/nginx/cert /etc/nginx/
# 配置nginx
cp ./config-backup/nginx/conf.d/* /etc/nginx/conf.d/
# 重启nginx
nginx -s reload
# 配置npm
cp ./config-backup/.npmrc ~

# wsl
if [ -d /mnt/c ]; then
    echo 'alias cdr="cd /mnt/c/Users/yong/repositories"' >> ~/.bashrc
    echo 'alias cdd="cd /mnt/c/Users/yong/Desktop"' >> ~/.bashrc
    echo 'alias o=explorer.exe' >> ~/.bashrc
# 非wsl
else
    # 设置网站首页
    echo '<h1>hello world</h1>' > /var/www/index.html
    # 安装v2ray
    ./config-backup/v2ray/v2ray-install.sh -y 
    # 配置v2ray
    cp ./config-backup/v2ray/config.json /etc/v2ray/config.json
    # 启动v2ray
    service v2ray start && cat /etc/v2ray/config.json && echo -e '\nv2ray启动成功'
    # 防火墙开放22端口,80端口,443端口,并启用
    ufw allow 22 && ufw allow 80 && ufw allow 443  && echo y | ufw enable
    # 安装v2ray管理服务
    git clone https://github.com/den9yon9/v2ray-admin.git
    cd v2ray && npm install && npm start
    # 安装加速器
    wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/Linux-NetSpeed/master/tcp.sh" && chmod a+x ./tcp.sh && ./tcp.sh
fi
