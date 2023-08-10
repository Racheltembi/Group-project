FROM openjdk:8-alpine
# #Required for starting application up.
RUN apk update && apk add /bin/sh
RUN mkdir -p /opt/app
ENV GROUP-PROJECT_HOME /opt/app
COPY target/spring-boot-mongo-1.0.jar $GROUP-PROJECT_HOME/spring-boot-mongo.jar
WORKDIR $GROUP-PROJECT_HOME
CMD ["java" ,"-jar","./spring-boot-mongo.jar"]
