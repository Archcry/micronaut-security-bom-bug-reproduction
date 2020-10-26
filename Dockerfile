FROM openjdk:14-alpine
COPY target/ktor-bug-*.jar ktor-bug.jar
EXPOSE 8080
CMD ["java", "-Dcom.sun.management.jmxremote", "-Xmx128m", "-jar", "ktor-bug.jar"]