# Use the official OpenJDK image with JDK as the build environment
FROM openjdk:11-slim AS build

# Set the working directory in the container
WORKDIR /app

# Copy your Java source code files into the container
COPY . .

# Compile your Java application
RUN javac HelloWorld.java

# Use the official OpenJDK image as the runtime environment
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy the compiled Java class
COPY --from=build /app/HelloWorld.class .

# Expose the port your application will listen on (adjust as needed)
EXPOSE 8080

# Define the command to run your Java application
CMD ["java", "HelloWorld"]
