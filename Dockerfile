FROM adoptopenjdk/openjdk11:latest
ARG JAR_FILE
COPY ${JAR_FILE} /app.jar
RUN echo ${JAR_FILE}
ENTRYPOINT  ["java", "-jar", "/app.jar"]