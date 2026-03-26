# SimpleApp

A Spring Boot application with PostgreSQL integration.

## Features

- RESTful API endpoints (if applicable)
- Database connectivity with PostgreSQL
- Maven for dependency management

## Prerequisites

- Java 17 or higher
- PostgreSQL
- Maven (or use the provided `mvnw`)

## Configuration

Update `src/main/resources/application.properties` with your database credentials.

> [!NOTE]
> It is recommended to use environment variables for sensitive information like database passwords.

## Running the Application

```bash
./mvnw spring-boot:run
```

## Testing

```bash
./mvnw test
```
