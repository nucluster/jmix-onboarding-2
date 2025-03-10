FROM eclipse-temurin:21-jre-alpine
COPY build/libs/*.jar app.jar

# NOTE:
# Application JAR file should be built with "-Pvaadin.productionMode=true".
# See more information about deployment in Jmix docs.

ENTRYPOINT ["java", "-jar", "/app.jar"]
