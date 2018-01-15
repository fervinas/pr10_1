FROM openjdk:8-jdk-alpine

ADD /target/eureka-server-0.0.1.SNAPSHOT-docker-info.jar eureka-server-0.0.1.SNAPSHOT-docker-info.jar 
 
ENTRYPOINT ["java","-jar","eureka-server-0.0.1.SNAPSHOT-docker-info.jar "]

ADD /target/eureka-server-0.0.1.SNAPSHOT.jar eureka-server-0.0.1.SNAPSHOT.jar
 
ENTRYPOINT ["java","-jar","eureka-server-0.0.1.SNAPSHOT.jar"]

FROM maven:3.5-ibmjava-8

ADD target/eureka-server-0.0.1.SNAPSHOT.jar /eureka-server-0.0.1.SNAPSHOT.jar

ADD start.sh /

ENTRYPOINT ["/start.sh"]
