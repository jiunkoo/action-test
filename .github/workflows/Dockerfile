FROM openjdk:17-jdk-alpine

RUN mkdir -p /app
WORKDIR /app
ADD . /app

ENV HOST 0.0.0.0
EXPOSE 3000

CMD ["java", "-jar", "my-app.jar"]
