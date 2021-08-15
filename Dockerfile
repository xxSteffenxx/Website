FROM adoptopenjdk/openjdk11:latest
ARG JAR_FILE
COPY ${JAR_FILE} /app.jar
SHELL ["ECHO","${JAR_FILE}"]
ENTRYPOINT  ["java", "-jar", "/app.jar"]