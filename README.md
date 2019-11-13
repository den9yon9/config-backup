1.设置Linux默认编辑器：update-alternatives --config editor
2.创建用户adduser yong设置密码
3.添加用户到sudo组: vim /etc/group在sudo组后添加用户yong
4.登录yong生成用户密钥 ssh-keygen
5.sudo visudo 编辑sudo组用户无需输入密码执行sudu操作 %sudo ALL=(ALL:ALL) NOPASSWD:  ALL
6.更换apt源
    1) cd /etc/apt/ && mv ./sources-list sources-list.backup (备份源文件)
    2) touch sources-list // 添加新的源文件并粘贴中科大镜像源到新的源文件中保存
    3) sudo apt update 更新源

7 安装nginx; sudo apt install nginx
8 安装mysql; sudo apt install mysql-server
9 启动MySQL服务 sudo service mysql start,注释掉配置文件中的bind-address: 127.0.0.1允许远程主机访问mysql服务
10 安装nodejs:  sudo apt install make && curl -L https://git.io/n-install | bash && source .bashrc

## 配置文件说明
- cvim.conf (chrome cvim 插件配置)
- default.conf (nginx配置)
- n-install.sh (node版本安装脚本)
- post-receive (git仓库自动部署钩子脚本)
- source-list (apt源仓库)
- ssr.sh (shadowsocksR安装脚本)
- profile.json (windows terminal配置文件)
