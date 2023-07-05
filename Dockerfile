#FROM openjdk:8
# with only67L vulnerabilities
FROM openjdk:22-jdk-bullseye 
# with 35H and 34M vulnerabilities
#FROM openjdk:22-oraclelinux8 

#no known vulnerabilities for this base image.
#FROM adoptopenjdk/openjdk11:jre-11.0.19_7-ubuntu

RUN apt-get update && \
    apt-get install build-essential maven default-jdk cowsay netcat -y && \
    update-alternatives --config javac
COPY . .
#RUN chown -R javauser:javauser /app
#USER javauser
CMD ["mvn", "spring-boot:run"]
