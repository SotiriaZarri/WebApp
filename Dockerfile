# FROM openjdk:20-jdk-alpine
# ARG JAR_FILE=*.jar
# COPY ./target/*.jar test.jar
# ENTRYPOINT ["java","-jar","/test.jar"]

FROM maven:3.6.3-openjdk-20

WORKDIR /app
COPY . .
RUN mvn clean install -DskipTests

CMD mvn clean spring-boot:run