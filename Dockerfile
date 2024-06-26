FROM maven:3.8.6-openjdk-18-slim AS build
WORKDIR /home/app

COPY ./pom.xml /home/app/pom.xml
COPY ./src/main/java/com/database/thiendb/ThiendbApplication.java	/home/app/src/main/java/com/database/thiendb/ThiendbApplication.java

RUN mvn -f /home/app/pom.xml clean package

COPY . /home/app
RUN mvn -f /home/app/pom.xml clean package

FROM openjdk:18.0-slim
EXPOSE 8080
COPY --from=build /home/app/target/*.jar app.jar
COPY *.json /
ENTRYPOINT [ "sh", "-c", "java -jar /app.jar" ]