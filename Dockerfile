FROM openjdk:17-jdk-alpine

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} app.jar

ENV HOST 0.0.0.0
EXPOSE 3000

ENTRYPOINT ["java","-jar","/app.jar"]
