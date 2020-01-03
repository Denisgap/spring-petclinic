FROM java:8-jdk-alpine
MAINTAINER petclinic 
COPY /target/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar /home/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar
CMD ["java","-jar","/home/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar"]
