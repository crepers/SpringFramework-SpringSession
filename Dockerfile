FROM redis
MAINTAINER woochul <crepers12@hanmail.net>

EXPOSE 6379

#docker run --name redis -d -p 6379:6379 redis
#docker run -it  --name redis -p 6379:6379 -d redis

## 외부 폴더에 데이터 저장소를 두고 싶을 경우
#$ docker run --name /Users/woochuljung/work/data/redis -d -v /your/dir:/data redis redis-server --appendonly yes

## 다른 컨테이너에 저장소를 두고 싶은 경우
#$ docker run --name some-redis -d --volumes-from some-volume-container redis redis-server --appendonly yes

## docker container에 연
#docker exec -it redis bash
  
### Redis cli 실
#redis-cli
### Redis Keys 확
#KEYS *

# redis-cli keys '*' | xargs redis-cli del
# redis-cli del spring:session:sessions:7e8383a4-082c-4ffe-a4bc-c40fd3363c5e