# 1.
docker ps -a
# -> 현재 실행 중인 도커 컨테이너 정보 조회

# 2.
docker images
# -> 보유하고 있는 이미지 목록 조회

# 3.
docker rmi nginx
# -> nginx 이름으로 된 도커 컨테이너의 이미지 또는 이미지 태그 삭제


# 다음 빈칸에 들어갈 알맞은 값을 작성하세요.

# 4.
# nginx 웹서버를 백그라운드 실행, 컨테이너 이름은 web1, 호스트 8080 → 컨테이너 80 매핑

# docker run -d --name _____ -p ____:____ nginx
docker run -d --name web1 -p 8080:80 nginx


# 5.
# MySQL 실행, 컨테이너 이름 mymysql, 루트 비밀번호 rootpw123, 호스트 3307 → 컨테이너 3306

# docker run -d --name _____ -e MYSQL_ROOT_PASSWORD=_____ -p ____:____ mysql
docker run -d --name mymysql -e MYSQL_ROOT_PASSWORD=rootpw123 -p 3307:3306 mysql


# 6.
# Redis 실행, 컨테이너 이름 myredis, 환경변수 REDIS_PASSWORD=secret123, 포트 6379 매핑

# docker run -d --name _____ -e _____=_____ -p ____:____ redis
docker run -d --name myreids -e REDIS_PASSWORD=secret123 -p 6379:6379 redis



# 다음 각 요구사항에 맞는 코드를 작성하세요.

# 7.
# 요구사항:
# PostgreSQL 데이터베이스를 백그라운드에서 실행하고, 비밀번호를 mypw로 설정하며 포트를 5432로 열어라.
docker run --name pgdb -d \
        -v pg-strorage:/var/lib/postgresql/data \
        -e POSTGRES_PASSWORD=mypw \
        -e POSTGRES_USER=postgres \
        -e POSTGRES_DB=mypgdb \
        -p 5432:5432 \
        postgres

# 8.
# 요구사항:
# myapp 컨테이너 안으로 접속해서 bash 쉘을 실행하라.
docker exec -it myapp bash

# 9.
# 요구사항:
# 현재 실행 중인 모든 컨테이너를 강제로 삭제하라.
docker rm -f $(docker ps -a -q)
