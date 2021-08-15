FROM adoptopenjdk/openjdk11:latest
COPY ./Test-1.0-SNAPSHOT.jar /app.jar
ENTRYPOINT  ["java", "-jar", "/app.jar"]