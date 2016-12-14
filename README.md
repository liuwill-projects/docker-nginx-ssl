# Nginx SSL Container

> Docker nginx ssl simple config

1 编辑`conf/nginx.dev.conf`更名为`conf/nginx.conf`，并替换location下的proxy_pass为正确的域名。
2 按照ssl_gen.sh的命令运行，生成ssl的crt和key文件
3 执行下面的docker命令

### 执行

```
docker build -t liuwill/nginx-ssl .

docker run --name hd_ssl_nginx -v ~/liuwill/ops/nginx-ssl/conf/nginx.conf:/etc/nginx/nginx.conf:ro -d -p 8888:80 -p 8443:443 liuwill/nginx-ssl
```