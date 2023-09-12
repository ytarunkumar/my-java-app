# Use the official OpenJDK image as the runtime environment
FROM openjdk:11-jre-slim

# Set the working directory
WORKDIR /app

# Copy your Java source code files into the container
COPY . .

# Compile your Java application (adjust the compilation command as needed)
RUN javac HelloWorld.java

# Expose the port your application will listen on (adjust as needed)
EXPOSE 8080

# Define the command to run your Java application
CMD ["java", "HelloWorld"]
