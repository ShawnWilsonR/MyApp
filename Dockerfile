FROM openjdk:17
EXPOSE 8080
ADD /target/myApp.jar myApp.jar
ENTRYPOINT ["java", "-jar", "/myApp.jar"]