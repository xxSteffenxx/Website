FROM adoptopenjdk/openjdk11:latest
COPY target/Test-1.0-SNAPSHOT.jar target/app.jar
ENTRYPOINT  ["java", "-jar", "target/app.jar"]