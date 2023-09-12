# Use the official Maven image as the build environment
FROM maven:3.8.4-openjdk-11-slim AS build

# Set the working directory in the container
WORKDIR /app

# Copy the project files into the container
COPY . .

# Build the application using Maven
RUN mvn clean package

# Use the official OpenJDK image as the runtime environment
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the JAR file from the build stage
COPY --from=build /app/target/your-application.jar .

# Expose the port your application will listen on (adjust as needed)
EXPOSE 8080

# Define the command to run your Java application
CMD ["java", "-jar", "your-application.jar"]
