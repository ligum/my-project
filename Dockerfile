FROM openjdk:8-jre-alpine

EXPOSE 8080
#RUN cat ./build/libs/my-app-1.0-SNAPSHOT.jar
RUN echo "This is an example file created by Dockerfile" > ./build/libs/my-app-1.0-SNAPSHOT.jar

COPY ./build/libs/my-app-1.0-SNAPSHOT.jar /usr/app/
#COPY my-app-1.0-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app

ENTRYPOINT ["java", "-jar", "my-app-1.0-SNAPSHOT.jar"]
