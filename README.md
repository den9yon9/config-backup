1.运行自动配置脚本auto.sh
2.创建用户adduser yong设置密码
3.添加用户到sudo组: adduser yong sudo 
4.sudo visudo 编辑sudo组用户无需输入密码执行sudo操作 %sudo ALL=(ALL:ALL) NOPASSWD:ALL
5.安装mysql, sudo apt install mysql-server
6.启动mysql服务 sudo service mysql start,注释掉配置文件中的bind-address: 127.0.0.1允许远程主机访问mysql服务
