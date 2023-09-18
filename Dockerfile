FROM openjdk:8-jdk-alpine
MAINTAINER derek

ENV TZ Asia/Taipei

RUN mkdir /app
#RUN groupadd -r derek && useradd -r -s /bin/false -g derek admin

WORKDIR /app
EXPOSE 8080
# use * can reg jar file name
COPY target/*.jar app.jar
ENTRYPOINT java -jar app.jar