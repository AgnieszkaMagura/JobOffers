FROM eclipse-temurin:17-jre-alpine
COPY /target/joboffers.jar /joboffers.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/joboffers.jar"]
