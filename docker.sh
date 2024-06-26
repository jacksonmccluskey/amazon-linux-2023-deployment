docker stop <container-name-1> # <container-name-N-2> <container-name-N-1> <container-name-N>
docker rm <container-name-1> # <container-name-N-2> <container-name-N-1> <container-name-N>
docker rmi <image-name-1> # <image-name-N-2> <image-name-N-1> <image-name-N>
cd <directory-with-Dockerfile>
docker build -t <image-name-1> ./ -f <Dockerfile-name>.dockerfile # New Line For Each Image Up To <image-name-N>
docker run --restart always -d --name <container-name-1> -p <port-number>:<port-number> -v $PWD/.env:/app/.env <image-name-N> # New Line For Each Container Up To <container-name-N>
