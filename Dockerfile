FROM openjdk:11 as jpaDemo
LABEL maintainer="darvin"
ADD target/crud-jpa-docker-0.0.1-SNAPSHOT.jar crud-jpa-docker.jar
ENTRYPOINT ["java","-jar","/crud-jpa-docker.jar"]
EXPOSE 8081