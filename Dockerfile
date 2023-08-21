
FROM maven:3.6.3-openjdk-20

WORKDIR /app
COPY . .
RUN mvn clean install -DskipTests

CMD mvn clean spring-boot:run
