# 1) 환경 구축

docker run --name pgdb -d \
        -v pg-storage:/var/lib/postgresql/data \
        -e POSTGRES_PASSWORD=pw1234 \
        -e POSTGRES_USER=user01 \
        -e POSTGRES_DB=mydb \
        -p 25432:5432 \
        postgres

# 2) 실행 및 검증
CREATE TABLE members (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL
);

INSERT INTO members (id, name, email)
VALUES (1001, '홍길동', 'hong@test.com');

SELECT * FROM members;