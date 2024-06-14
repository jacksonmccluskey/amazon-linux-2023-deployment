# amazon-linux-2023-deployment
Deploying Services on Amazon Linux 2023

### My Essential Setup

```
$ dnf update
$ dnf install nginx certbot python3-certbot-nginx # Reverse Proxy & SSL/TLS with Certbot & Let's Encrypt
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash # Installing Node.js & npm
$ nvm install 20
$ dnf install git -y
$ mkdir /var/www
```
