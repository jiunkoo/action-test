FROM openjdk:17-jdk-alpine

RUN mkdir -p /app
WORKDIR /app
ADD . /app

EXPOSE 8080

CMD ["java", "-jar", "my-app.jar"]
