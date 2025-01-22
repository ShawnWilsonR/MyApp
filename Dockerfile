FROM openjdk:17
EXPOSE 8080
RUN curl -fsSLO https://get.docker.com/builds/Linux/x86_64/docker-17.04.0-ce.tgz  && tar xzvf docker-17.04.0-ce.tgz  && mv docker/docker /usr/local/bin  && rm -r docker docker-17.04.0-ce.tgz
ADD target/myApp.jar myApp.jar
ENTRYPOINT ["java", "-jar", "/myApp.jar"]