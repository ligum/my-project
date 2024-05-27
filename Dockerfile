FROM openjdk:8-jre-alpine

EXPOSE 8080

# Create a directory for the application
RUN mkdir -p /usr/app

# Change the working directory to the application directory
WORKDIR /usr/app

# Assuming the JAR file is located in the same directory as the Dockerfile,
# you can use ADD to copy it into the Docker image
ADD my-app-1.0-SNAPSHOT.jar /usr/app/

# Define the command to run the application
ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
