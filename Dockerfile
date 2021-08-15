FROM adoptopenjdk/openjdk11:latest
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
CMD ["java", "-jar", "/app.jar"]