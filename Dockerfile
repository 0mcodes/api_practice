# 1. Base image (Java runtime)
FROM eclipse-temurin:17-jdk-alpine

# 2. Set working directory inside container
WORKDIR /app

# 3. Copy jar file into container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# 4. Expose port (documentation purpose)
EXPOSE 8080

# 5. Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
