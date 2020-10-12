# 给脚本加执行权限
chmod a+x  ./**/*.sh

# 安装nodejs
echo y | ./config-backup/nodejs/n-install.sh && source ~/.bashrc && echo nodejs安装成功
# 配置npmrc
cp ./config-backup/nodejs/.npmrc ~

# 配置git
cp ./config-backup/git/.gitconfig ~ && echo "git配置成功"

# 安装commitizen
# ./config-backup/nodejs/commitizen.sh

# 安装http-server
# ./config-backup/nodejs/http-server.sh

# wsl
if [ -d /mnt/c ]; then
    echo 'alias cdr="cd /mnt/c/Users/yong/repositories"' >> ~/.bashrc
    echo 'alias cdd="cd /mnt/c/Users/yong/Desktop"' >> ~/.bashrc
    echo 'alias open=explorer.exe' >> ~/.bashrc
    echo 'alias rm="rm -r "'>> ~/.bashrc
fi

