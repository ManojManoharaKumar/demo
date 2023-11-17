FROM openjdk:17-jre
MAINTAINER Manoj
COPY target/*.jar /app/app.jar
VOLUME /app/vols
WORKDIR /app
RUN apk upgrade libssl3 libcrypto3
RUN apk add --update curl
ENTRYPOINT ["sh", "-c", "java $JAVA_OPTS -jar app.jar"]