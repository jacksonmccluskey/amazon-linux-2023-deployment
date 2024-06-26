# amazon-linux-2023-deployment
Deploying Services on Amazon Linux 2023

### My Essential Setup

```
$ dnf update
$ dnf install nginx certbot python3-certbot-nginx # Reverse Proxy & SSL/TLS with Certbot & Let's Encrypt
$ certbot --nginx
$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash # Installing Node.js & npm
$ nvm install 20 # Check with node -v && npm -v
$ which node # Copy output to ExecStart to run Node.js service
$ dnf install git -y
$ mkdir /var/www
$ cd /var/www
$ git clone <my-project-git-url> # Don't forget the .env!
$ tsc server.ts
$ node server.js # For Testing
$ dns install docker -y
$ systemctl start docker # Run Docker Daemon
```

### Official Resources

- [Creating Users](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/managing-users.html)
