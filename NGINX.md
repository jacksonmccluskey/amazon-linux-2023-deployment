# nginx

nginx [engine x] is an HTTP and reverse proxy server, a mail proxy server, and a generic TCP/UDP proxy server.

See docs here: https://nginx.org/en/

### View nginx Configuration

```
$ cd /etc/nginx
$ sudo vi nginx.conf
```

### Restart nginx (After nginx.conf Changes)

```
sudo systemctl status nginx
# TRY
sudo systemctl restart nginx
# OR
sudo systemctl daemon-reload
# CHECK
sudo systemctl status nginx
```

### Can't Reload nginx?

```
$ sudo pkill -f nginx & wait $!
$ sudo systemctl start nginx
```
