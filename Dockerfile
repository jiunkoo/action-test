FROM openjdk:17-oracle

ARG JAR_FILE=/build/libs/*.jar

COPY ${JAR_FILE} app.jar

ENV HOST 0.0.0.0
EXPOSE 3000

ENTRYPOINT ["java","-jar","/app.jar"]
