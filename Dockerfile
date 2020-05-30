FROM openjdk:8u212-jre-alpine3.9

WORKDIR /home/apps/
ADD target/service-1.0.0.jar .
ADD target/lib ./lib
ADD start.sh .

ENTRYPOINT ["sh", "/home/apps/start.sh"]
