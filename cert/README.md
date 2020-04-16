# 转换.pem为.cert, wsl下的openssl转换有问题,最好到服务器上转换: 
openssl x509 -outform der -in your-cert.pem -out your-cert.crt
