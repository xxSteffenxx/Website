FROM adoptopenjdk/openjdk11:latest
RUN mkdir /app
COPY Website.jar /app
CMD ["java", "-jar", "/app/Website.jar"]