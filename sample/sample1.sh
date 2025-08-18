# 웹서버 실행 시키기
# 웹서버 (Nginx)

docker run --rm -d -p 8080:80 nginx

# http://localhost:8080/ 접속해서 상태 확인


# 지금 실행중인 도커 컨테이너 정보 조회
docker ps
docker ps -a  #실행중이 아닌 컨테이너도 포함해서 조회

# 실행 주인 도커 종료 + 삭제
docker rm -f [컨테이너 아이디 or 컨테이너 이름]
# -f  강제로 삭제하곘다 (force의 약어)

docker rm -f bc9c
# 중복되는 아이디가 없으면 시작하는 용어 몇 글자만 적어도 됨!