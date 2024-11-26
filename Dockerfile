FROM openjdk:17-alpine
WORKDIR /5Winyouness
RUN ls -la
COPY target/tp-foyer-5.0.0.jar /usr/local/lib/5Winyouness.jar
EXPOSE 8089
USER root
ENTRYPOINT ["java", "-jar", "/usr/local/lib/5Winyouness.jar"]
