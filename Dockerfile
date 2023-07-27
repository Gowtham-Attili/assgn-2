#FROM eclipse-temurin
#VOLUME /tmp
#ARG JAR_FILE
#COPY build/libs/demo-0.0.1-SNAPSHOT.jar app.jar
#ENTRYPOINT ["java","-jar","/app.jar"]

# Use an official OpenJDK runtime as the base image
FROM eclipse-temurin

EXPOSE 8081

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY demo-0.0.1-SNAPSHOT.jar /app/demo-0.0.1-SNAPSHOT.jar

# Run the Java application when the container starts
CMD ["java", "-jar", "demo-0.0.1-SNAPSHOT.jar"]

