npx create-react-app react-prod-nginx

docker build -t react-prod-nginx .

docker images

# 컨테이너 실행
docker run -d -p 8585:80 --name react-prod-nginx react-prod-nginx

docker start react-prod-nginx

docker ps -a

docker exec -it react-prod-nginx bash

# 내부 명령어
cd /usr/share/nginx/html
ls