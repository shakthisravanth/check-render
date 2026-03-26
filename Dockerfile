# Build stage
FROM openjdk:17-jdk-slim AS build
WORKDIR /app
COPY . .
# Ensure mvnw is executable
RUN chmod +x ./mvnw
RUN ./mvnw clean package -DskipTests

# Run stage
FROM openjdk:17-jdk-slim
WORKDIR /app
# Copy only the compiled jar from the build stage
COPY --from=build /app/target/simpleapp-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]
